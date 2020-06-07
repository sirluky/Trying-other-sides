/* Welcome to the Interactive C Tutorial.
Start by choosing a chapter and
write your code in this window. */

#include <stdio.h>
#include <time.h>

int main()
{
  time_t rawtime;
  struct tm *timeinfo;

  time(&rawtime);
  timeinfo = localtime(&rawtime);
  printf("Aktuální čas a datum je ... hmm .. : %s", asctime(timeinfo));

  int cislo;
  unsigned long vysledek = 1;

  printf("Zadejte cislo jehož chcete faktorial: ");

  scanf("%d", &cislo);

  for (int i = 1; i <= cislo; i++)
  {
    vysledek *= i;
  }

  printf("Hello, World! %ld \n", vysledek);

  return 0;
}
