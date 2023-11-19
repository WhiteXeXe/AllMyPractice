#include <stdio.h>
#include <string.h>

int search_max_num(char *first, char *second)
{


    if (strlen(first) > strlen(second))
    {
        return 1;
    }
    else
    {
        if (strlen(first) < strlen(second))
        {
            return 2;
        }
        else
        {
            for (int i = 0; i < strlen(first) && i < strlen(second); i++)
            {
                if (first[i] > second[i])
                    return 1;
                else
                    if (first[i] < second[i])
                        return 2;
            }

            return 3;
        }
    }
}

int main() {
    char a[] = "12312";
    char b[] = "12312";

    printf("%d", search_max_num(a, b));
}