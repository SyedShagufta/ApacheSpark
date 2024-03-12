# Question-1
num = 1
while num < 25:
    if num % 2 == 0:
        print(num)
    num += 1

# Question-2
for i in range(2, 26, 2):
    print(i)

# Question-3
num = int(input())
res = 1
while num > 0:
    res *= num
    num -= 1

print(res)


# Question-4
def sum_of_squares(number):
    r = 0
    for ele in number:
        r += int(ele) ** 2
    return r


n = input()
print(sum_of_squares(n))

# Question-5 - we can use slicing

fib_series = [0, 1]
while True:
    next_fib = fib_series[-1] + fib_series[-2]
    if next_fib < 50:
        fib_series.append(fib_series[-1] + fib_series[-2])
    else:
        break
print(fib_series[:])
