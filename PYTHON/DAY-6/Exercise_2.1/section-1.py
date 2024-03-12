import re

# Question-1
s1 = input()
s2 = input()

idx = len(s1) // 2
res = s1[:idx] + s2 + s1[idx:]
print(res)


# Question-2
str1 = "P@#yn26at^&i5ve"
char_c = 0
digit_c = 0
symbol_c = 0
for s in str1:
    if s.isalpha():
        char_c += 1
    elif s.isdigit():
        digit_c += 1
    else:
        symbol_c += 1
print(f"Chars = {char_c}\nDigits = {digit_c}\nSymbol = {symbol_c}")

# Question-3
str1 = "English = 78 Science = 83 Math = 68 History = 65"

# Extract all digits from the string
digits = [int(digit) for digit in re.findall(r'\d+', str1)]

# Calculate the sum and average of the digits
sum_digits = sum(digits)
avg_digits = sum_digits / len(digits)

print(f'Sum of digits: {sum_digits}')
print(f'Average of digits: {avg_digits}')

# Question-4
sentence = input()
words = sentence.split(' ')
print(' '.join(words[::-1]))

# Question-5
sent = input()
wrds = sent.split(' ')
freq = {}
for word in wrds:
    if word not in freq:
        if '.' in word:
            word = word[:len(word) - 1]
            freq[word] = 1
    else:
        freq[word] += 1
max_count = max(freq.values())
for key, value in freq.items():
    if value == max_count:
        print(f"{key} is counting {max_count} times")
