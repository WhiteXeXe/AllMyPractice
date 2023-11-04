#include <stdio.h>

int main() {
    int kolvo_chis[101] = {0};
    char text[101];
    int num_in_chis = 0, num_chis_v_mass = 0, max_number = 0;

    fgets(text, 100, stdin);

    // Цикл, который ищет кол во букв в слове
    for (int i = 0; i < 100; i++) {
        if (text[i] >= 'A' && text[i] <= 'z') {
            num_in_chis += 1;
            kolvo_chis[num_chis_v_mass] = num_in_chis;
        } else {
            num_in_chis = 0;
            num_chis_v_mass++;
        }
    }

    // Цикл, который ищет максимальное число
    for (int i = 0; i < 101; i++)
    {
        if (kolvo_chis[i] > max_number) max_number = kolvo_chis[i];
    }

    // Основной цикл проверки

    for (int i = 0; i < 101; i++)
    {
        if (text[i] >= 'A' && text[i] <= 'z') {
            num_in_chis += 1;
            if (num_in_chis == max_number)
            {
                for (int j = (i - max_number + 1); j <= i; j++)
                {
                    if (text[j] >= 'a' && text[j] <= 'z') text[j] -= 32;
                    else
                        if (text[j] >= 'A' && text[j] <= 'Z') continue;
                        else
                            break;
                }
                break;
            }
        }
        else
        {
            num_in_chis = 0;
        }
    }

    // Цикл вывода
    for (int i = 0; i < 101; i++)
        if (text[i] >= 'A' && text[i] <= 'z' || text[i] == 32) printf("%c", text[i]);
}