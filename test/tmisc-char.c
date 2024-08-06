int printf ();
void *malloc ();

int main ()
{
  char *c;
  char d;
  c = malloc (27);

  d = 0;
  while (d < 26) {
    *(c+d) = d+'a';
    d = d + 1;

    printf ("%ld\n", d);
    printf ("%c\n", *(c+d));
  };
  *(c+26) = 0;
  
  printf ("%s\n", c);
}
