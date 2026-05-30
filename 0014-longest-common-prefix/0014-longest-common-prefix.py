class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        result = ''

        word = strs[0]
        for i in range(len(word)):
            for j in strs[1:]:
                if i >= len(j) or word[i] != j[i]:
                    return result
            result += word[i]
        return result