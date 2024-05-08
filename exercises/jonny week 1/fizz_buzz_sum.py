# 5/7/2024 - Jonny exercise 1 - Fizz Buzz Sum
# Write a function fizz_buzz_sum to find the sum of all multiples of 3 or 5 below a target value.
# For example, if the target value was 10, the multiples of 3 or 5 below 8 are 3, 5, 6, and 9.
# Because 3+5+6+9=233+5+6+9=23, our function would return 23.



import time

class Timer:
    def __init__(self):
        self.start = time.time()

    def next(self, what):
        delta = time.time() - self.start
        print(f"{what} took {delta:.2f} seconds")
        self.start = time.time()
        return delta
    

def fizz_buzz_sum(target):
    num_sum = 0
    for i in range(3, target, 3):
        num_sum += i
    for i in range(5, target, 5):
        num_sum += i
    return num_sum

if __name__ == "__main__":
    TARGET = 100000000
    timer = Timer()
    print(fizz_buzz_sum(TARGET))
    timer.next("fizz_buzz_sum")