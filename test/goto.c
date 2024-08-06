int printf();


int main ()
{
    long n;
    n = 0;
    while(1){
        printf ("n = %ld\n",n);
        n = n +1;
        if(!(n < 10)){
            goto LL;
        }
    }
LL:
    n = 1;
    printf ("n = %ld\n",n);
}

