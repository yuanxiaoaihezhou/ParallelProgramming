#include <iostream>
#include <sys/time.h>
using namespace std;

int main() {
    struct timeval start, end;

    // 第一阶段：
    for (int n = 524288; n <= 4194304; n *= 2) {
        int* a = new int[n];
        long long total_time = 0;

        for (int t = 0; t < 10; t++) {
            // 初始化数组
            for (int i = 0; i < n; i++) a[i] = i;
            
            gettimeofday(&start, NULL);
            for(int m = n; m > 1; m /= 2) {
                for(int i = 0; i < m/2; i++) {
                    a[i] = a[i*2] + a[i*2+1];
                }
            }
            gettimeofday(&end, NULL);
            
            if(a[0] == 0) cout << "";

            total_time += (end.tv_sec - start.tv_sec) * 1000000LL + 
                         (end.tv_usec - start.tv_usec);
        }
        cout << "规模" << n << "：" 
             << (total_time / 10.0)/1000.0 << " ms" << endl;
        delete[] a;
    }

    // 第二阶段：
    for (int n = 8388608; n <= 134217728; n *= 2) {
        int* a = new int[n];
        long long total_time = 0;

        for (int t = 0; t < 5; t++) {
            for (int i = 0; i < n; i++) a[i] = i;
            
            gettimeofday(&start, NULL);
            for(int m = n; m > 1; m /= 2) {
                for(int i = 0; i < m/2; i++) {
                    a[i] = a[i*2] + a[i*2+1];
                }
            }
            gettimeofday(&end, NULL);

            if(a[0] == 0) cout << "";
            
            total_time += (end.tv_sec - start.tv_sec) * 1000000LL + 
                         (end.tv_usec - start.tv_usec);
        }
        cout << "规模" << n << "：" 
             << (total_time / 5.0)/1000.0 << " ms" << endl;
        delete[] a;
    }

    // 第三阶段：
    for (int n = 268435456; n <= 536870912; n *= 2) {
        int* a = new int[n];
        long long total_time = 0;

        for (int t = 0; t < 3; t++) {
            for (int i = 0; i < n; i++) a[i] = i; 
            
            gettimeofday(&start, NULL);
            for(int m = n; m > 1; m /= 2) {
                for(int i = 0; i < m/2; i++) {
                    a[i] = a[i*2] + a[i*2+1];
                }
            }
            gettimeofday(&end, NULL);

            if(a[0] == 0) cout << "";
            
            total_time += (end.tv_sec - start.tv_sec) * 1000000LL + 
                         (end.tv_usec - start.tv_usec);
        }
        cout << "规模" << n << "：" 
             << (total_time / 3.0)/1000.0 << " ms" << endl;
        delete[] a;
    }

    return 0;
}