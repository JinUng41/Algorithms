class Solution:
    def isHappy(self, n: int) -> bool:
        def get_next(num: int) -> int:
            total = 0

            for digit in str(num):
                total += int(digit) ** 2

            return total

        seen = set()

        while n != 1:
            if n in seen:
                return False

            seen.add(n)
            n = get_next(n)

        return True