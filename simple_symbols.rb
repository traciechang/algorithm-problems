# coderbyte

# 7/23/19

def SimpleSymbols(str)
    alpha = ("a".."z").to_a

  str.each_char.with_index do |char, idx|
      if idx == 0 || idx == str.length-1
        return false if alpha.include?(char)
    elsif alpha.include?(char)
        if str[idx-1] == "+" && str[idx+1] == "+"
            return true
        else
            return false
        end
      end
  end
end
   