class Solution:
    def finalValueAfterOperations(self, operations: List[str]) -> int:
        total = 0
        for op in operations:
            if '-' in op:
                total -= 1
            elif '+' in op:
                total += 1
            else:
                continue

        return total