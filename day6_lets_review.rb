
 Practice
 Compete
 Jobs
 Rank
 Leaderboard
6
  toowan

All Domains  Tutorials  30 Days of Code  Day 6: Let's Review
Day 6: Let's Review
by AllisonP
Problem
Submissions
Leaderboard
Discussions
Editorial
Tutorial
Submitted 9 days ago • Score: 30.00 Status: Accepted
 Test Case #0
 Test Case #1
 Test Case #2
 Test Case #3
 Test Case #4
 Test Case #5
 Test Case #6
 Test Case #7
 Test Case #8
 Test Case #9

Submitted Code
Language: Ruby

 Open in editor

1
# Enter your code here. Read input from STDIN. Print output to STDOUT
2
​
3
# Given a string, S, of length N that is indexed from 0 to N-1 , print its even-indexed and odd-indexed characters as  space-separated strings on a single line (see the Sample below for more detail).
4
​
5
num_tests = gets.to_i
6
substrings = []
7
(1..num_tests).each do |string|
8
  substrings << gets.chomp.to_s
9
end
10
​
11
​
12
def mult_even_odd_strings (substrings)
13
    new_string = []
14
    idx = 0
15
    while idx < substrings.length
16
        string = substrings[idx]
17
        new_substring = even_odd_string(string)
18
        new_string << new_substring
19
        idx += 1
20
    end
21

22
    new_string.each do |string|
23
        puts string
24
    end
25

26
end
27
​
28
​
29
# Helper Function
30
def even_odd_string(substring)
31
​
32
even_indexed = []
33
odd_indexed = []
34
​
35
    idx = 0
36
    while idx < substring.length
37
        if idx % 2 == 0
38
            even_indexed << substring[idx]
39
        elsif idx % 2 == 1
40
            odd_indexed << substring[idx]
41
        end
42
        idx += 1
43
    end
44
​
45
    even_indexed.join("") + " " + odd_indexed.join("")
46
​
47
end
48
​
49
​
50
mult_even_odd_strings(substrings)
Join us on IRC at #hackerrank on freenode for hugs or bugs.
Contest Calendar | Interview Prep | Blog | Scoring | Environment | FAQ | About Us | Support | Careers | Terms Of Service | Privacy Policy | Request a Feature
