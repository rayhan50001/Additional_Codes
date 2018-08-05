mod=1000000007
MAX=200001
n=int(input())
prime=[]
for i in range(MAX):
    prime.append(0)
arr=[int(x) for x in input().split()]
for i in range(n):
    prime[arr[i]]+=1

total=1
for i in range(MAX):
    total=total*(prime[i]+1)
ans=1
for i in range(MAX):
    if(prime[i]!=0):
        cnt=prime[i]
        pw=total/(cnt+1)
        xx=i
        res=xx**pw
        print(res)
        res=res%mod
        ans=ans*res
        ans=ans%mod
        for j in range(1,cnt):
            xx=(xx*i)
            tp=xx**pw
            tp=tp%mod
            ans=ans*tp
            ans=ans%mod
        ans=ans%mod
        if(ans<0):
            ans+=mod
print(ans)
