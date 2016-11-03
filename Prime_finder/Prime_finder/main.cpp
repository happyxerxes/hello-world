#include <iostream>
#include <primesieve.hpp>
using namespace std;
int main(int argc, const char * argv[]) {
    double dur;
    clock_t start,end;
    uint64_t n;
    do
    {
        cout<<"请输入1--100000000之间的数(若为小数则自动转换为整数):"<<endl;
        cin >> n;
        if( n>=1 &&  n <=100000000 )
            break;
        else
            cout<<"您输入的不正确,请重新启动!"<<endl;
        exit(0);
    }  while(n!='a');
    
    start = clock();
    primesieve::PrimeSieve A;
    cout <<A.nthPrime(n, 1)<<endl;
    end = clock();
    dur = (double)(end - start);
    cout<<"Use Time: "<<dur/CLOCKS_PER_SEC<<endl;
    return 0;
}
