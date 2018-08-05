import math

a=input()
a=int(a)
b=input()
b=int(b)
c=input()
c=int(c)
x=int(b*b)
x=x-(int(4)*a*c)
x=math.sqrt(x)
y=x-b
z=int(-x-b)
x=x/(int(2)*a)
z=z/(int(2)*a)
print(x)
print(z)
