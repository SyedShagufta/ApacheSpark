import sys

c = 0

a,b = int(sys.argv[1]),int(sys.argv[2])

for i in range(0,10):
    print("\t",a)
    c = a+b
    a = b
    b = c

