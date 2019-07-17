# coderbyte

# 7/17/19

def FirstReverse(str)

    # code goes here
    new_str = ""
    idx = str.length - 1
    
    while idx >= 0
      new_str << str[idx]
      idx -= 1
    end
    new_str
           
  end