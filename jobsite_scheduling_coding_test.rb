# Overview
# Scheduling work on a jobsite is one of the most difficult tasks in construction
# management. Different contractors work on
# different trades, and can only do so much work in a single day. We need to make sure
# that we have the right people on the job site every day, and also anticipate how
# many days we'll need to complete a set of tasks.

### Tester Notes

# Features
# - Find workers that can complete certain tasks
# - Schedule daily jobsite work
# - Schedule all work for completion

# Time Estimate
# 45-60 minutes


require 'rspec/autorun'
require 'set'
require 'pry'

class WorkScheduler
  def initialize(workers)
    @workers = workers
  end

  def find_suitable_workers(trade)
    output = []

    @workers.each do |worker|
      output << worker if worker[:trades].include?(trade)
    end
    output
  end

  def suitable_workers(trade)
  # Worker.where(trade: trade).order("cost ASC")

    output = []

    # @workers.each do |worker|
    #   output << worker[:email] if worker[:trades].include?(trade)
    # end
    # output
    find_suitable_workers(trade).each do |worker|
      output << worker[:email]
    end
    output
  end

  def schedule_one_day(trades)
    output = []

    trades.each do |trade|
      poss_workers = find_suitable_workers(trade)

      curr_worker = nil
      min_cost = nil
      poss_workers.each do |worker|
        next if output.include?(worker[:email])
        if min_cost.nil? || worker[:cost] < min_cost
          min_cost = worker[:cost]
          curr_worker = worker[:email]
        end
      end
      output << curr_worker if !curr_worker.nil?
    end
    output
  end


  def schedule_all_tasks(tasks)
    output = []
    until output.flatten.length == tasks.length
      remaining_tasks = tasks[0+output.flatten.length...tasks.length]
      output << schedule_one_day(remaining_tasks)
    end
    output
  end
end

RSpec.describe do
  describe 'simple schedules' do
    let(:workers) do
      [
        {
          email: 'alice@example.com',
          trades: ['brickwork', 'drywall'],
          cost: 100
        },
        {
          email: 'bob@brickwork.com',
          trades: ['brickwork'],
          cost: 90
        },
        {
          email: 'charlie@cement.com',
          trades: ['cement'],
          cost: 80
        },
        {
          email: 'wally@walls.com',
          trades: ['cement', 'drywall'],
          cost: 95
        },
      ]
    end
    
    let(:scheduler) { WorkScheduler.new(workers) }
    
    # it 'can find a suitable worker for a task' do
    #   expect(scheduler.suitable_workers('cement')).to match_array(['charlie@cement.com', 'wally@walls.com'])
    #   expect(scheduler.suitable_workers('brickwork')).to match_array(['alice@example.com', 'bob@brickwork.com'])
    #   expect(scheduler.suitable_workers('drywall')).to match_array(['alice@example.com', 'wally@walls.com'])
    # end
    

    # it 'can build a simple schedule for one day' do
    #   expect(scheduler.schedule_one_day(['cement'])).to match_array(['charlie@cement.com'])
    #   expect(scheduler.schedule_one_day(['brickwork'])).to match_array(['bob@brickwork.com'])
    #   expect(scheduler.schedule_one_day(['drywall'])).to match_array(['wally@walls.com'])
    #   expect(scheduler.schedule_one_day(['cement', 'drywall'])).to match_array(['charlie@cement.com', 'wally@walls.com'])
    #   expect(scheduler.schedule_one_day(['cement', 'brickwork'])).to match_array(['charlie@cement.com', 'bob@brickwork.com'])
    #   expect(scheduler.schedule_one_day(['drywall', 'brickwork'])).to match_array(['wally@walls.com', 'bob@brickwork.com'])
    #   expect(scheduler.schedule_one_day(['cement', 'brickwork', 'drywall'])).to match_array(
    #     ['charlie@cement.com', 'bob@brickwork.com', 'wally@walls.com'])
    # end
    
    # it 'does not double book workers' do
    #   expect(scheduler.schedule_one_day(['cement', 'cement', 'cement'])).to match_array(['charlie@cement.com', 'wally@walls.com'])
    #   expect(scheduler.schedule_one_day(['brickwork', 'brickwork', 'brickwork'])).to match_array(['bob@brickwork.com', 'alice@example.com'])
    #   expect(scheduler.schedule_one_day(['drywall', 'drywall', 'drywall'])).to match_array(['wally@walls.com', 'alice@example.com'])
    # end
    
    it 'can schedule multiple days of work' do
      expect(scheduler.schedule_all_tasks(['brickwork', 'brickwork', 'brickwork'])).to match_array([
        a_collection_including('bob@brickwork.com', 'alice@example.com'),
        a_collection_including('bob@brickwork.com')])
      expect(scheduler.schedule_all_tasks(['drywall', 'drywall', 'drywall'])).to match_array([
        a_collection_including('wally@walls.com', 'alice@example.com'),
        a_collection_including('wally@walls.com')])
      expect(scheduler.schedule_all_tasks(['cement', 'cement', 'cement'])).to match_array([
        a_collection_including('charlie@cement.com', 'wally@walls.com'),
        a_collection_including('charlie@cement.com')])
    end
    
    it 'can schedule all work optimistically' do
      expect(scheduler.schedule_all_tasks(['cement', 'cement', 'cement', 'brickwork'])).to match_array([
        a_collection_including('charlie@cement.com', 'bob@brickwork.com', 'wally@walls.com'),
        a_collection_including('charlie@cement.com')])
      expect(scheduler.schedule_all_tasks(['cement', 'cement', 'drywall', 'drywall', 'cement', 'brickwork'])).to match_array([
        a_collection_including('charlie@cement.com', 'bob@brickwork.com', 'alice@example.com', 'wally@walls.com'),
        a_collection_including('charlie@cement.com', 'wally@walls.com')])
      expect(scheduler.schedule_all_tasks(['cement', 'cement', 'brickwork', 'brickwork', 'cement', 'brickwork'])).to match_array([
        a_collection_including('charlie@cement.com', 'bob@brickwork.com', 'alice@example.com', 'wally@walls.com'),
        a_collection_including('charlie@cement.com', 'bob@brickwork.com')])
    end
  end
end
