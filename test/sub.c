/* comment #1 */
int printf ();
long i;
/* comment #2 */
int main(){
   i  = 11/2;
   printf ("%ld\n",i);
   if(6 < i || 9 < i){
      printf ("%s\n","if");
      printf ("%ld\n",i);
   }
   else{
      printf ("%s\n","else");
   }
   return 0;
}
