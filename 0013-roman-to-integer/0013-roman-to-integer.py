class Solution:
    def romanToInt(self, s: str) -> int:
        numeral = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000}
        total = 0
        for i in range(0, len(s) - 1):
            cur = s[i]
            nxt = s[i + 1]
            if numeral[cur] < numeral[nxt]:
                total -= numeral[cur]
            else:
                total += numeral[cur]
        total += numeral[s[-1]]
        return total