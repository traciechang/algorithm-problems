# hackerrank

def happyLadybugs(b)
    chars = {}
    has_space = false
    has_single = false
    has_no_space_all_happy = true

    b.each_char.with_index do |char, idx|
        chars[char] = chars[char] ? chars[char] + 1 : 1
        has_no_space_all_happy = false if b[idx - 1] != char && b[idx + 1] != char
    end

    return "YES" if has_no_space_all_happy

    chars.each do |key, val|
        if key == "_"
            has_space = true
        elsif val == 1
            has_single = true
        end
    end
    return "YES" if has_space && !has_single

    "NO"
end
