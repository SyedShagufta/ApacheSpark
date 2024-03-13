# Question-1

lst = [10, 20, 30, 30, 40, 20, 60, 60, 70, 80, 90]
if 20 in lst:
    idx = lst.index(20)
    lst.pop(idx)
    lst.insert(idx, 200)

print(lst)

# Question-2
tup = (('a', 23), ('b', 37), ('c', 11), ('d', 29))
print(sorted(tup, key= lambda x: x[1]))

# Question-3
dic = {
    'id': 101,
    'name': 'sofia',
    'dept': 'IT',
    'stream': 'Databricks',
    'salary': 50000,
}

key_value = input("Enter a key value to delete: ")
dic.pop(key_value)
print(dic)

print_key = input("Enter a key value to print: ")
print(dic[print_key])

n = int(input("Enter the no of keys you want to add to dic: "))
for i in range(0, n):
        k = input("Enter the key: ")
        v = input("Enter the value: ")
        dic[k] = v

print(dic)
