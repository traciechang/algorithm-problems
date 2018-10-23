class MaxStack
    def initialize
        @data = []
    end

    def push(val)
        if @data.empty?
            new_max = val
        else
            new_max = val > max ? val : max
        end
        @data << { value: val, max: new_max }
    end

    def pop
        @data.pop
    end

    def max
        @data.last[:max]
    end
end