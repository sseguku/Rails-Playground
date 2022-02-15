## Write an algorithm to determine if a number n is happy.

A happy number is a number defined by the following process:

Starting with any positive integer, replace the number by the sum of the squares of its digits.
Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
Those numbers for which this process ends in 1 are happy.
Return true if n is a happy number, and false if not.

Example 1:

```
Input: n = 19
Output: true
Explanation:
1^2 + 9^2 = 82
8^2 + 2^2 = 68
6^2 + 8^2 = 100
1^2 + 0^2 + 02 = 1
```

Example 2:

```
Input: n = 2
Output: false
```

Example 3:
Input: n = 14
Explanation
1^2 + 4^2 = 17
1^2 + 7^2 = 1 + 49
4^2 + 9^2 = 97
9^2 + 7^2 = 130
1^2 + 3^2 + 0^2 = 10
1^2 + 0^2 = 1

Example 4:
Input: n = 1111111
Explanation
1+1+1+1+1+1+1 = 7

Loop happens when n is repeated

Constraints:

```
1 <= n <= 231 - 1
```
