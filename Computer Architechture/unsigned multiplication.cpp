#include<bits/stdc++.h>
using namespace std;
int M[1000];
int Q[1000];
int A[1000];
int sum[10000];
int stA[100000];
int stQ[100000];
int ansA[10000];
int ansQ[10000];
int c=0;
int main()
{
    int n,m;
    memset(A,0,sizeof(A));
    cin>>n>>m;
    int v=n;
    int v1=m;
    int i=0,j=0;
    while(v)
    {
        Q[i]=v%2;
        v/=2;
        i++;
    }
     while(v1)
    {
        M[j]=v1%2;
        v1/=2;
        j++;
    }
    cout<<"No:\tc\tA\tQ\tM\t===> Step\n";
    cout<<"0\t"<<c<<"\t";
    for(int s=i-1; s>=0; s--) cout<<A[s];
    cout<<"\t";
    for(int s=i-1; s>=0; s--) cout<<Q[s];
    cout<<"\t";
    for(int s=j-1; s>=0; s--) cout<<M[s];
    cout<<"\t===> initial\n";
    int bit=i;
    reverse(M,M+i);
    reverse(Q,Q+i);
    int bitofA=0,sta=0,mainbit=0;
    i=0;
    c=0;
    for(int k=0; k<bit; k++)
    {
    int f=0;
    // addition of A and M
    if(Q[bit-1]==1)
    {
    for(int s=0; s<bit; s++)
    {
        stA[s]=A[s];
        stQ[s]=M[s];
    }
    int rem=0;
    int p=0;
    reverse(stA,stA+bit);
    reverse(stQ,stQ+bit);
    for(int l=0; l<bit; l++)
    {
        //cout<<A[l]<<" "<<M[l]<<endl;
//        sum[p]=((A[l] ^ M[l]) ^ rem);
//        rem=((A[l] & M[l]) | (A[l] & rem)) | (M[l] & rem);
        sum[p]=(stA[l]+stQ[l]+rem)%2;
        rem=(stA[l]+stQ[l]+rem)/2;
        p++;
    }
    if(rem!=0)
    {
    sum[p] = rem;
    p++;
    }
    //reverse(M,M+bit);
    reverse(sum,sum+p);
    int st=0;
    bitofA=p;
    if(bitofA!=bit)
    c=sum[0],st=1;
    // store sum to A
    p=0;
    int len=bit;
    for(int l=st; l<bitofA; l++)
    {
        A[p]=sum[l];
        p++;
    }
    //print value
    cout<<k+1<<"\t";
    cout<<c<<"\t";
    for(int s=0; s<len; s++)
    {
        cout<<A[s];
    }
    cout<<"\t";
    for(int s=0; s<len; s++)
    {
        cout<<Q[s];
    }
    cout<<"\t";
    for(int s=0; s<len; s++)
    {
        cout<<M[s];
    }
    cout<<"\t===> ADD\n";
    }
    //store Q & A value
    memset(stA,0,sizeof(stA));
    memset(stQ,0,sizeof(stQ));
    memset(sum,0,sizeof(sum));
    for(int s=0; s<bit; s++)
    {
        stA[s]=A[s];
        stQ[s]=Q[s];
    }
    //shift
    int len=1;
    for(int e=0; e<bit-1; e++)
    {
        //cout<<Q[e-1]<<endl;
        Q[len]=stQ[e];
        len++;
    }
    Q[0]=A[bit-1];
    len=1;
    for(int e=0; e<bit; e++)
    {
        A[len]=stA[e];
        len++;
    }
    A[0]=c;
    c=0;
    //print each value
    cout<<k+1<<"\t";
    cout<<c<<"\t";
    for(int s=0; s<bit; s++)
    {
        cout<<A[s];
    }
    cout<<"\t";
    for(int s=0; s<bit; s++)
    {
        cout<<Q[s];
    }
    cout<<"\t";
    for(int s=0; s<bit; s++)
    {
        cout<<M[s];
    }
    cout<<"\t===> Shift\n";
    for(int s=0; s<bit; s++)
    {
        ansA[s]=A[s];
        ansQ[s]=Q[s];
    }
    //reverse(A,A+bit);
    //reverse(Q,Q+bit);
    }
    cout<<"Final Answer: \t";
    for(int i=0; i<bit; i++)
    {
        cout<<ansA[i];
    }
    cout<<"\t";
    for(int i=0; i<bit; i++)
    {
        cout<<ansQ[i];
    }
    cout<<endl;


}
