#include<bits/stdc++.h>

using namespace std;

void solve(){
   int x;
   cin>>x;

   int arr[x];

   for(int i=0;i<x;i++) cin>>arr[i];
   int sum=0;
   for(int i=0;i<x;i++) {
     sum+=arr[i];
   }
    cout<<sum<<endl;
   
}
int main(){
    solve();
}