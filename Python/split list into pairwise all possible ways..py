def all_pairs(lst):
    if len(lst) < 2:
        yield []
        return
    if len(lst) % 2 == 1:
        # Handle odd length list
        for i in range(len(lst)):
            for result in all_pairs(lst[:i] + lst[i+1:]):
                yield result
    else:
        a = lst[0]
        for i in range(1,len(lst)):
            pair = (a,lst[i])
            for rest in all_pairs(lst[1:i]+lst[i+1:]):
                yield [pair] + rest

cnt1=0
cnt2=0
for x in all_pairs([1,2,3,4]):
    paisi=0
    cnt1+=1
    ashche=0
    print(x,end=" ")
    store=[]
    for i in range(len(x)):
        store.append(x[i][0])
        store.append(x[i][1])
    for i in range(len(store)):
        for j in range(i+1,len(store)):
            for k in range(j+1,len(store)):
                for l in range(k+1,len(store)):
                    a=store[i]
                    b=store[j]
                    c=store[k]
                    d=store[l]
                    ashche+=1
                    if(d>b and a>c):
                        paisi=1
                        break
                if(paisi==1):
                    break
            if(paisi==1):
                break
        if(paisi==1):
            break
    if(paisi==1):
        cnt2+=1
        print("==>Invalid")
    else:
        print("==>Valid")
    print(ashche)
print(cnt1-cnt2)
