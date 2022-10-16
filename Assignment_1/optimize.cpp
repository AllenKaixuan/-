#include <iostream>
#include <sys/time.h>
using namespace std;
int main()
{
    int N = 1000;
    double diff = 0;
    for (int i = 0; i < 5; i++, N *= 10)
    {
        int *a = new int[N];
        struct timeval tv_begin, tv_end;
        gettimeofday(&tv_begin, NULL);
        for (int j = 0; j < N; j++)
        {
            a[j] = a[j] * 2000;
            a[j] = a[j] / 10000;
        }
        gettimeofday(&tv_end, NULL);
        diff = 1000000 * (tv_end.tv_sec - tv_begin.tv_sec) + (tv_end.tv_usec - tv_begin.tv_usec);
        cout << "N1:" << N << diff << "us" << endl;
        int *b = a;
        gettimeofday(&tv_begin, NULL);
        for (int k = 0; k < N; k++)
        {
            *b = *b * 2000;
            *b = *b / 10000;
            b++;
        }
        gettimeofday(&tv_end, NULL);
        diff = 1000000 * (tv_end.tv_sec - tv_begin.tv_sec) + (tv_end.tv_usec - tv_begin.tv_usec);
        cout << "N2:" << N << diff << "us" << endl;
    }
}