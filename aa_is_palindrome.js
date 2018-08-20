isPalindrome = (string) => {
    let startIdx = 0
    let endIdx = string.length - 1

    while (startIdx < endIdx) {
        if (string[startIdx] != string[endIdx]) {
            return false
        } else {
            startIdx++
            endIdx--
        }
    }
    return true
}

console.log(isPalindrome("done"))