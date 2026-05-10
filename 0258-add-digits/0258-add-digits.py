class Solution:
    def addDigits(self, num: int) -> int:
        if len(str(num)) == 1:
            return num
        
        total = num

        while len(str(total)) > 1:
            temp = 0
            for ch in str(total):
                temp += int(ch)
            total = temp

        return total