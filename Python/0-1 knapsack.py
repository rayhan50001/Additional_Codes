price_arr = []
weight_arr = []

def KnapSack(pos,now,remain_weight,lent):
    if pos == lent-1:
        return now
    if (weight_arr[pos+1] <= remain_weight):
        return max(KnapSack(pos+1,now,remain_weight,lent),KnapSack(pos+1,now+price_arr[pos+1],remain_weight - weight_arr[pos+1],lent))
    return KnapSack(pos+1,now,remain_weight,lent)
        

if __name__ == "__main__":
    
    weight = input("Enter Bag Weight")
    weight = int(weight)
    print("Enter Price Of Product In A Line")
    price_arr = [int(x) for x in input().split()]
    print("Enter Weight Of Product In A Line")
    weight_arr = [int(x) for x in input().split()]
    lent = len(price_arr)
    res = KnapSack(-1,0,weight,lent)
    print(res)
