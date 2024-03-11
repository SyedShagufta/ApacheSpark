# Question-1

num1 = int(input())
num2 = int(input())
num3 = int(input())

lst = [num1, num2, num3]
print("Maximum number is", max(lst))

# Question-2
var1, *var2 = "All", "work", "and", "no", "play", "make", "Jack", "a", "dull", "boy."
print(var1, *var2)

# Question-3
s = input()
count = 0
for letter in s:
    if letter in ['a', 'e', 'i', 'o', 'u']:
        count += 1
print(f"number of vowels are {count}")

# Question-4
num1 = int(input())
num2 = int(input())
op = input()

if op == '+':
    print(num1 + num2)
elif op == '-':
    print(num1 - num2)
elif op == '*':
    print(num1 * num2)
elif op == '/':
    print(num1 / num2)
else:
    print("Invalid operator")

print(5 % 2)
print(9 % 5)
print(15 % 12)
print(0 % 7)
print(7 % 0)
