#include <iostream>
#include <sys/time.h>
using namespace std;

void recursion(int* a, int n) {
    if (n == 1)
        return;
    for (int i = 0; i < n/2; i++)
        a[i] += a[n - i - 1];
    recursion(a, n / 2);
}

int main() {
    struct timeval start, end;

    // 第一阶段：
    for (int n = 524288; n <= 4194304; n *= 2) {
        int* a = new int[n];
        long long total_time = 0;

        for (int num = 0; num < 10; num++) {
            // 初始化数组
            for (int i = 0; i < n; i++) a[i] = i;
            
            gettimeofday(&start, NULL);
            recursion(a, n);
            gettimeofday(&end, NULL);
            
            long long elapsed_us = (end.tv_sec - start.tv_sec) * 1000000LL + 
                                  (end.tv_usec - start.tv_usec);
            total_time += elapsed_us;
        }

        cout << "规模" << n << "：" << (total_time / 10.0) / 1000.0 << " ms" << endl;
        delete[] a;
    }

    // 第二阶段：
    for (int n = 8388608; n <= 134217728; n *= 2) {
        int* a = new int[n];
        long long total_time = 0;

        for (int num = 0; num < 5; num++) {
            for (int i = 0; i < n; i++) a[i] = i;
            
            gettimeofday(&start, NULL);
            recursion(a, n);
            gettimeofday(&end, NULL);
            
            long long elapsed_us = (end.tv_sec - start.tv_sec) * 1000000LL + 
                                  (end.tv_usec - start.tv_usec);
            total_time += elapsed_us;
        }

        cout << "规模" << n << "：" << (total_time / 5.0) / 1000.0 << " ms" << endl;
        delete[] a;
    }

    // 第三阶段：
    for (int n = 268435456; n <= 536870912; n *= 2) {
        int* a = new int[n];
        long long total_time = 0;

        for (int num = 0; num < 3; num++) {
            for (int i = 0; i < n; i++) a[i] = i;
            
            gettimeofday(&start, NULL);
            recursion(a, n);
            gettimeofday(&end, NULL);
            
            long long elapsed_us = (end.tv_sec - start.tv_sec) * 1000000LL + 
                                  (end.tv_usec - start.tv_usec);
            total_time += elapsed_us;
        }

        cout << "规模" << n << "：" << (total_time / 3.0) / 1000.0 << " ms" << endl;
        delete[] a;
    }

    return 0;
}