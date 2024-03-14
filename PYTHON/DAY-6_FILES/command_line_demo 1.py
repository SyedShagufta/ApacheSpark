import sys

arg_list = sys.argv

print("program name = ",arg_list[0])

if len(arg_list) > 1 :
    for arg in arg_list[1:]:
        print(arg)
else:
    print("no additional argument provided")