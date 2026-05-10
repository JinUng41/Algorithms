class Solution:
    def addDigits(self, num: int) -> int:
        total = num

        while total >= 10:
            temp = 0

            for ch in str(total):
                temp += int(ch)
            
            total = temp
            
        return total