# # Question-1
age = int(input())
if 18 <= age <= 60:
    print("Person can vote")
elif 0 < age < 18:
    print("Person cannot vote")
else:
    print("Invalid age")

# # Question-2
c = input()
if c in ['a', 'e', 'i', 'o', 'u']:
    print("vowel")
else:
    print("not vowel")

# # Question-3
uname = input()
pswd = input()

if uname == "Admin" and pswd == "123":
    print("Welcome Admin")
else:
    print("Invalid username or password")
