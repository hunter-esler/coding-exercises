# 5/7/2024 - Jonny exercise 1 - Fizz Buzz Sum
# Given a list of salaries, we'll define a metric called inequity which is the difference between max and min salary seen in the list:
# inequity = max(input_list) - min(input_list)
# Write a function called min_inequity which takes in a list of salaries, and a value n, and returns the minimum inequity possible when taking n salaries from the full salary list.

#EX 1:
#salaries = [60000, 80000, 120000, 70000]
#n = 2
#The minimum inequity is $10,000, because max(60000,70000) - min(60000,70000) = 10000.


import random


import time

class Timer:
    def __init__(self):
        self.start = time.time()

    def next(self, what):
        delta = time.time() - self.start
        print(f"{what} took {delta:.2f} seconds")
        self.start = time.time()
        return delta
    

def _inequity(salaries: list):
    return max(salaries) - min(salaries)

def min_inequity(salaries: list, n: int):
    #assuming n <= len(salaries)
    sorted_salaries = sorted(salaries)
    current_min = _inequity(sorted_salaries[:n])
    i = 1
    for i in range(1, len(salaries) - n):
        current_min = min(current_min, _inequity(sorted_salaries[i:i+n]))
        i += 1
    return current_min

if __name__ == "__main__":
    #put whatever here?
    SALARIES = [60000, 80000, 120000, 70000]
    print(SALARIES)
    N = 3
    timer = Timer()
    print(min_inequity(SALARIES, N))
    timer.next("min_inequity")

