class Solution:
    def isPalindrome(self, s: str) -> bool:
        s = s.lower()
        clean_s = ''.join(ch for ch in s if ch.isalnum())
        
        return clean_s == clean_s[::-1]