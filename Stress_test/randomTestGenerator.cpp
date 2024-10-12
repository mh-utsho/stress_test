#include<bits/stdc++.h>

using namespace std;


int randomNumberBetwee(int a, int b){
    if(a>b)
        swap(a,b);
    return a + rand()%(b - a + 1);
}
int main(int argc, char* argv[]){
    srand(atoi(argv[1]));

    int x = randomNumberBetwee(1,100);
    cout<<x<<endl;

    for(int i=0;i<x;i++) {
        int y=randomNumberBetwee(1,10000);
        cout<<y<<" ";
    }cout<<endl;
}