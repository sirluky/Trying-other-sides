

#include <stdio.h>
#include <stdbool.h>

int main()
{
  printf("Vitej, jdeme hledat prvočísla. GL !!");

  printf("%c", '\n');

  int aktdelka = 0;
  unsigned long cisla[1000] = {2};
  unsigned long ccislo = 2;

  for (int i = 0; i < 1000; i++)
  {
    bool ok = false;
    while (!ok)
    {
      ccislo++;

      // printf("trying: %d \n", ccislo);
      for (int i = 0; i <= aktdelka; i++)
      {

        if (ccislo % cisla[i] != 0)
        {
          // printf("success: %d \n", ccislo);
          ok = true;
        }
        else
        {
          ok = false;
          break;
        }
      }
    }
    aktdelka++;
    cisla[aktdelka] = ccislo;
  }

  for (int i = 0; i < aktdelka; i++)
  {
    printf("%ld, ", cisla[i]);
  }

  printf("\n konec %c", '\n');

  return 0;
}