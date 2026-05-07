class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        max_candy = max(candies)
        output = []

        for candy in candies:
            output.append(candy + extraCandies >= max(candies))
        return output