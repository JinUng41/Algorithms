class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        max_value = 0
        for account in accounts:
            total = sum(account)
            max_value = max(max_value, total)
        return max_value