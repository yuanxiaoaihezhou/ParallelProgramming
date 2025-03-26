#include <iostream>
#include <sys/time.h>
using namespace std;

int main()
{
    for (int n = 0; n <= 1000; n += 100)
    {
        // 初始化数组b
        int **b = new int*[n];
        for (int i = 0; i < n; i++)
        {
            b[i] = new int[n];
            for (int j = 0; j < n; j++)
            {
                b[i][j] = i + j;
            }
        }

        // 初始化数组a
        int *a = new int[n];
        for (int i = 0; i < n; i++)
        {
            a[i] = i;
        }

        // 初始化数组sum
        int *sum = new int[n];
        long long total_time = 0;

        // 多次计时取平均
        for (int num = 0; num < 10; num++)
        {
            struct timeval start, end;
            gettimeofday(&start, NULL); // 开始时间
            
            // 平凡算法
            for (int i = 0; i < n; i++)
            {
                sum[i] = 0;
                for (int j = 0; j < n; j++)
                {
                    sum[i] += b[j][i] * a[j];
                }
            }
            
            gettimeofday(&end, NULL); // 结束时间
            
            // 计算时间差（微秒）
            long long elapsed_us = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
            total_time += elapsed_us;
        }

        cout << "规模" << n << "：" <<(total_time * 1.0 / 10) / 1000.0 << " ms" << endl;
    
        for (int i = 0; i < n; i++)
            delete[] b[i];
        delete[] b;
        delete[] a;
        delete[] sum;
    }

    for (int n = 2000; n <= 5000; n += 1000)
    {
        // 初始化数组b
        int **b = new int*[n];
        for (int i = 0; i < n; i++)
        {
            b[i] = new int[n];
            for (int j = 0; j < n; j++)
            {
                b[i][j] = i + j;
            }
        }

        // 初始化数组a
        int *a = new int[n];
        for (int i = 0; i < n; i++)
        {
            a[i] = i;
        }

        // 初始化数组sum
        int *sum = new int[n];
        long long total_time = 0;

        // 多次计时取平均
        for (int num = 0; num < 5; num++)
        {
            struct timeval start, end;
            gettimeofday(&start, NULL); // 开始时间
            
            // 平凡算法
            for (int i = 0; i < n; i++)
            {
                sum[i] = 0;
                for (int j = 0; j < n; j++)
                {
                    sum[i] += b[j][i] * a[j];
                }
            }
            
            gettimeofday(&end, NULL); // 结束时间
            
            // 计算时间差（微秒）
            long long elapsed_us = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
            total_time += elapsed_us;
        }

        cout << "规模" << n << "：" <<(total_time * 1.0 / 5) / 1000.0 << " ms" << endl;
    
        for (int i = 0; i < n; i++)
            delete[] b[i];
        delete[] b;
        delete[] a;
        delete[] sum;
    }

    for (int n = 10000; n <= 40000; n += 10000)
    {
        // 初始化数组b
        int **b = new int*[n];
        for (int i = 0; i < n; i++)
        {
            b[i] = new int[n];
            for (int j = 0; j < n; j++)
            {
                b[i][j] = i + j;
            }
        }

        // 初始化数组a
        int *a = new int[n];
        for (int i = 0; i < n; i++)
        {
            a[i] = i;
        }

        // 初始化数组sum
        int *sum = new int[n];
        long long total_time = 0;

        // 多次计时取平均
        for (int num = 0; num < 5; num++)
        {
            struct timeval start, end;
            gettimeofday(&start, NULL); // 开始时间
            
            // 平凡算法
            for (int i = 0; i < n; i++)
            {
                sum[i] = 0.0;
                for (int j = 0; j < n; j++)
                {
                    sum[i] += b[j][i] * a[j];
                }
            }
            
            gettimeofday(&end, NULL); // 结束时间
            
            // 计算时间差（微秒）
            long long elapsed_us = (end.tv_sec - start.tv_sec) * 1000000LL + (end.tv_usec - start.tv_usec);
            total_time += elapsed_us;
        }

        cout << "规模" << n << "：" <<(total_time * 1.0 / 5) / 1000.0 << " ms" << endl;
    
        for (int i = 0; i < n; i++)
            delete[] b[i];
        delete[] b;
        delete[] a;
        delete[] sum;
    }
    return 0;
}