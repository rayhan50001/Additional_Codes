ss=list()
s=str(input("Enter Your Name"))

for i in sorted(s):
    x=str(i)
    y=int(ord(' '))
    z=int(ord(x))
    if(z!=y):
        ss.append(x)
print (ss)
