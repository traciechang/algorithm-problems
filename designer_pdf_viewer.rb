def designerPdfViewer(h, word)
    alphabet = ("a".."z").to_a
    heights = []

    word.each_char do |char|
        idx = alphabet.index(char)
        heights << h[idx]
    end

    max_height = heights.max
    max_height * word.length
end

puts designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], "abc")