#pyramid

n=int(input("Enter Size to Print Pyramid: "))
nn=n
print(1)
for i in range(n+1):
    for j in range(i):
        print("*",end=" ")
    print("\r")
for i in range(n-1,0,-1):
    for j in range(i):
        print("*",end=" ")
    n=n-1
    print("\r")
print(2)
for i in range(nn+1):
    len=nn-i+1
    for j in range(len):
        print(" ",end=" ")
    len2=nn-len
    for k in range(len2):
        print("*",end=" ")
    print("\r")

for i in range(nn-1,-1,-1):
    len=nn-i-1
    for j in range(len):
        print(" ",end=" ")
    len2=nn-len
    for k in range(len2):
        print("*",end=" ")
    print("\r")
print(3)
m=nn
mm=int((m+1)/2)
for i in range(mm):
    len=mm-(i+1)
    #print(len)
    for j in range(len):
        print(" ",end=" ")
    len2=mm-len
    for k in range(len2):
        print("*",end=" ")
    len3=(len2-1)
    for k in range(len3):
        print("*",end=" ")
    print("\r")
for i in range(mm,-1,-1):
    len=mm-(i-1)
    #print(len)
    for j in range(len):
        print(" ",end=" ")
    len2=mm-len
    for k in range(len2):
        print("*",end=" ")
    len3=(len2-1)
    for k in range(len3):
        print("*",end=" ")
    print("\r")
    
