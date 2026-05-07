class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        output = []
        for candy in candies:
            total = candy + extraCandies
            output.append(total >= max(candies))
        return output