import math
ans =list()
n,k=input().split()
n=int(n)
k=int(k)
ans=[int(x) for x in input().split()]
#print(ans)
ans.sort()
res=1111111
for i in range(len(ans)):
    sum=0
    if(i+k<len(ans)):
        for j in range(i,i+k):
            sum=sum+ans[j]
        sum=float(sum)
        kk=float(100)
        sum=sum/kk;
        sum=math.ceil(sum)
        res=min(res,sum)
print(res)
    
