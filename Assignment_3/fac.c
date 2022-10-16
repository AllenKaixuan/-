
int main()
{
    int i=2;
    int f = 1;
    int n;
    n = getint();
    if(n<i)
    {
        putch(10);
        return 0;
    }
    else
    {
        while (i<=n)
        {
            f = f*i;
            i = i+1;
        }
    putint(f);
    putchar(10);
    return 0;
    }
    

}
