#include<bits/stdc++.h>
#define ll long long
using namespace std;
#define f(x) sin(x)
double dp[1000][1000];
int main()
{
    double start,mid,end;
    cin>>start>>mid>>end;
    int l=0;
    for(double i=start; i<=end+mid; i+=mid)
    {
        double f=f(i);
        dp[l][0]=f;
        //cout<<f<<" ";
        l++;
    }
    for(int j=1; j<l; j++)
    {
        for(int i=0; i<l-j; i++)
        {
            dp[i][j]=(dp[i][j-1]-dp[i+1][j-1]);
        }
    }
    double ans=0;
    for(int j=0; j<l; j++)
    {
        for(int i=0; i<l-j; i++)
        {
            cout<<dp[i][j]<<" ";
            if(j==l-1)
            {
                ans=dp[i][j];
            }
        }
        cout<<endl;
    }
    cout<<"Final Answer: "<<ans<<endl;
}

