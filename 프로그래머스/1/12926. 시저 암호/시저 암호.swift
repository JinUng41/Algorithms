func solution(_ s: String, _ n: Int) -> String {
    return s.map { char in
        if char == " " {
            return " "
        }

        let asciiValue = char.asciiValue!
        var shiftedAsciiValue = asciiValue + UInt8(n)

        if char.isUppercase, shiftedAsciiValue > Unicode.Scalar("Z").value {
                shiftedAsciiValue -= 26
        } else if char.isLowercase, shiftedAsciiValue > Unicode.Scalar("z").value {
                shiftedAsciiValue -= 26
        }
        return String(Unicode.Scalar(shiftedAsciiValue))
    }.joined()
}