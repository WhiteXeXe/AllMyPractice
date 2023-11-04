#include "stdio.h"













int main()
{

    int chess_table[25][25] = {0};
    int figure_location[700] = {0};
    int loc_x = 0, loc_y = 0;
    int size_table = 0, need = 0, stand = 0;
    scanf_s("%d %d %d", &size_table, &need, &stand);

    for (int i = 0; i < stand; i += 2)
    {
        scanf_s("%d %d", &loc_x, &loc_y);
        figure_location[i] = loc_x;
        figure_location[i+1] = loc_y;
    }


}