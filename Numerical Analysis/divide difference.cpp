/*
4
0 1 4 5
8 11 68 123
4
1 2 3 4
0.8415 0.9093 0.1411 -0.7568
*/
#include<bits/stdc++.h>
using namespace std;
double f[1000009];
double x[1000009];
double dp[1000][1000];
double x1[100009];
double x2[100009];
int main()
{
    int n;
    cin>>n;
    for(int i=0; i<n; i++)
    {
        cin>>x[i];
    }
    for(int i=0; i<n; i++)
    {
        cin>>f[i];
    }
    int l=0;
    for(int i=0; i<n; i++)
    {
        dp[l][0]=f[i];
        x1[l]=x[i];
        x2[l]=x[i+1];
        l++;
    }
    for(int j=1; j<l; j++)
    {
        for(int i=0; i<l-j; i++)
        {
            double val=((dp[i+1][j-1]-dp[i][j-1])/(x2[i]-x1[i]));
            dp[i][j]=val;
            //cout<<x1[i]<<" "<<x2[i]<<endl;
            x1[i]=x1[i];
            x2[i]=x2[i+1];
        }
    }
    cout<<"\n\nOUTPUT: "<<endl;
    double ans=0;
    for(int j=0; j<l; j++)
    {
        for(int i=0; i<l-j; i++)
        {
            cout<<fixed<<setprecision(4)<<dp[i][j]<<" ";
            if(j==l-1)
            {
                ans=dp[i][j];
            }
        }
        cout<<endl;
    }
    cout<<"Final Answer: "<<ans<<endl;
}
