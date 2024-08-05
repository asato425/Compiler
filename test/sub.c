int   printf ();
void *malloc ();
void  srandom ();
int   random ();
long  atol ();

long mod (long x, long y)
{   return x - (x / y) * y; }

void make_array (long *data, long size, long seed)
{
    long i; i = 0;
    srandom (seed);

    while (i < size) {
        long j;
        j = random ();
        *(data + i) = mod (j, size);
        i = i + 1;
    }
}

int main (int argc, char **argv)
{
   long i; long *p; long size;
   size = atol (*(argv + 1));
   p = malloc (8 * size);
   make_array (p, size, 0);
   i = 0;
   while (i < size) {
      printf ("%ld\n", *(p + i));
      i = i + 1;
   }
}

