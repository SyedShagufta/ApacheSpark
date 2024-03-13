# Question-1

def max_in_list(lst):
    for ele in lst:
        if type(ele) != int:
            return "Error"
    return max(lst)


list1 = [4, 55, 66, 77, 88, 99, 44]
print(max_in_list(list1))


# Question-2
def factorial_calculator():
    def factorial(num):
        if num == 0:
            return 1
        else:
            return num * factorial(num - 1)

    return factorial


# Create an instance of the factorial_calculator function
calculate_factorial = factorial_calculator()

# Call the inner function with a number to calculate its factorial
number = int(input("Enter a number to calculate its factorial: "))
result = calculate_factorial(number)
print("Factorial of", number, "is", result)

min_num = lambda a, b, c: min(a, b, c)
print(min_num(10, 20, 30))

str = "hello"
str_rev = str[::-1]
print(str_rev[::2])

