#/usr/bin/env python

a = "fiz"
b = "buz"
for i in range(100):
    if i % 15 == 0:
        print a + b
    elif i % 5 == 0:
        print b
    elif i % 3 ==0:
        print a
    else:
        print i

