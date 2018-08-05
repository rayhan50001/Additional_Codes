ss=list()
s=str(input("Enter Your Name"))
ch=str(input("Enter A Character For Search"))
sh=int(ord(ch))
#print (sh)
l=0
for i in range(len(s)):
    x=str(s[i])
    y=int(ord(x))
    #print(y)
    if(y==sh):
        ss.append(i)

print (ss)
       
