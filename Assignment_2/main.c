#include <stdio.h>
#include "output.c"
#define init 1;
int main()
{
    int n;
    int sum = init; // 测试宏
    int i;
    printf("请输入你要求的阶乘：");
    scanf("%d", &n);
    for (i = n; i > 0; i--)
    {
        sum *= i;
    }
    Output(sum, n);
    return 0;
}