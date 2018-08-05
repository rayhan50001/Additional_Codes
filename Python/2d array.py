arr = [[]]
n=int(input())

#arr=[[ j for j in input().split()] for i in range(n)] 

for i in range(n):
    for j in range(n):
        print(arr[i][j]+" ",end="")
    print("\n")
