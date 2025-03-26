#include <iostream>
#include <sys/time.h>
using namespace std;

int main() {
    struct timeval start, end;
    
    // 第一阶段：中等规模测试（524288-4,194,304）测试10次
    for (int n = 524288; n <= 4194304; n *= 2) {
        int* a = new int[n];
        for (int i = 0; i < n; i++) a[i] = i;

        long long total_time = 0;
        for (int t = 0; t < 10; t++) {
            int sum = 0; 
            
            gettimeofday(&start, NULL);
            for (int i = 0; i < n; i++) sum += a[i];
            gettimeofday(&end, NULL);
            
            if (sum == 0) cout << "";  

            total_time += (end.tv_sec - start.tv_sec) * 1000000LL + 
                         (end.tv_usec - start.tv_usec);
        }
        cout << "规模" << n << "：" 
             << (total_time / 10.0)/1000.0 << " ms" << endl;
        delete[] a;
    }

    // 第二阶段：较大规模测试（8,388,608-134,217,728）测试5次
    for (int n = 8388608; n <= 134217728; n *= 2) {
        int* a = new int[n];
        for (int i = 0; i < n; i++) a[i] = i;

        long long total_time = 0;
        for (int t = 0; t < 5; t++) {
            int sum = 0;
            
            gettimeofday(&start, NULL);
            for (int i = 0; i < n; i++) sum += a[i];
            gettimeofday(&end, NULL);
            
            if (sum == 0) cout << "";
            
            total_time += (end.tv_sec - start.tv_sec) * 1000000LL + 
                         (end.tv_usec - start.tv_usec);
        }
        cout << "规模" << n << "：" 
             << (total_time / 5.0)/1000.0 << " ms" << endl;
        delete[] a;
    }

    // 第三阶段：超大规模测试（268,435,456-536,870,912）测试3次
    for (int n = 268435456; n <= 536870912; n *= 2) {
        int* a = new int[n];
        for (int i = 0; i < n; i++) a[i] = i;

        long long total_time = 0;
        for (int t = 0; t < 3; t++) {
            int sum = 0;
            
            gettimeofday(&start, NULL);
            for (int i = 0; i < n; i++) sum += a[i];
            gettimeofday(&end, NULL);
            
            if (sum == 0) cout << "";
            
            total_time += (end.tv_sec - start.tv_sec) * 1000000LL + 
                         (end.tv_usec - start.tv_usec);
        }
        cout << "规模" << n << "：" 
             << (total_time / 3.0)/1000.0 << " ms" << endl;
        delete[] a;
    }

    return 0;
}