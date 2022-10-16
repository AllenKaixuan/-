int *glob;
int *f(int **x)
{
    int sa[2] = {0, 1};
    int loc = 3;
    glob = &loc;
    *x = &sa[0];
    return &loc;
}
void h(void)
{
    unsigned int i;
    if (i >= 0)
        printf(">=0\n");
    else
        printf("<0");
}