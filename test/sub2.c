int printf ();
long i;

int main()
{
    i = 0;
    while (0 < i) {
        printf ("i = %ld\n", i);
        i = i - 1;
    }
}