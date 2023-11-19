#include <stdio.h>
#include <string.h>
#define MAX 1000

void strreturn(char *a)
{
    // так как fgets добавляет \n на конце, то сделана такая проверка, как число q
    int q = 0;
    if (a[strlen(a) - 1] == '\n') q = 1;

    char b[10000];
    int count_chis = strlen(a);
    for (int i = 0; i < count_chis - q; i++)
    {
        b[i] = a[count_chis - 1 - i - q];
    }
    b[count_chis - q] = '\0';
    strcpy(a, b);
}



void add(char *first, char *second, char *result) {
    strreturn(first);
    strreturn(second);

    int len_first = strlen(first);
    int len_second = strlen(second);
    int tmp_num = 0;
    int scetchik = 0;

    while (scetchik < len_first || scetchik < len_second) {
        int digit1 = 0;
        int digit2 = 0;

        if (scetchik < len_first) {
            digit1 = first[scetchik] - '0';
        }
        if (scetchik < len_second) {
            digit2 = second[scetchik] - '0';
        }

        int sum = digit1 + digit2 + tmp_num;
        result[scetchik] = (sum % 10) + '0';
        tmp_num = sum / 10;

        scetchik++;
    }

    if (tmp_num > 0) {
        result[scetchik++] = tmp_num + '0';
    }
    result[scetchik] = '\0';
    strreturn(result);
}



// Поиск максимального числа (для вычитания)
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



void minus(char *first, char *second, char *result) {
    // Для работы с перевернутыми значениями
    strreturn(first);
    strreturn(second);

    int isNegative = 0; //
    // Проверяем, какое число больше
    int max_num = search_max_num(first, second);

    // Если второе число больше, меняем их местами
    if (max_num == 2) {
        char *temp = first;
        first = second;
        second = temp;
        isNegative = 1; // Результат будет отрицательным
    }

    int len1 = strlen(first), len2 = strlen(second);
    int tmp_num = 0; // Взятие из следующего разряда


    for (int i = 0; i < len1; i++) {

        //// Данный цикл реализует проверку: хватает ли цифр во 2 числе, если нет, то просто работай с 0
        // Вычитание разрядов с учетом взятия tmp то есть времнного номера
        int second_v_num = 0; // Вычитаемое (из числа в строку)
        if (i < len2) {
            second_v_num = second[i] - '0';
        }
        ////


        int diff = (first[i] - '0') - second_v_num - tmp_num;

        if (diff < 0) {
            diff += 10;
            tmp_num = 1;
        } else {
            tmp_num = 0;
        }

        result[i] = diff + '0';
    }

    result[len1] = '\0';

    // удаление нулей
    int i = len1 - 1;
    while (i >= 0 && result[i] == '0') i--;
    if (i == -1)
        strcpy(result, "0");
    else {
        result[i + 1] = '\0';
        strreturn(result); // Переворачиваем результат обратно
        if (isNegative) {
            // Добавление минуса к результату, если он отрицательный
            for (int j = strlen(result); j >= 0; j--) {
                result[j + 1] = result[j];
            }
            result[0] = '-';
        }
    }
}



void umnozh(char *first, char *second, char *result_umnozh) {
    // Обработка символов новой строки, если они есть
    first[strcspn(first, "\n")] = 0;
    second[strcspn(second, "\n")] = 0;

    int first_len = strlen(first);
    int second_len = strlen(second);

    // Обнуление строки результата
    memset(result_umnozh, '0', first_len + second_len);
    result_umnozh[first_len + second_len] = '\0';

    // Основной цикл умножения
    for (int i = first_len - 1; i >= 0; i--) {
        int carry = 0;
        for (int j = second_len - 1; j >= 0; j--) {
            int tmp_num = (first[i] - '0') * (second[j] - '0') + (result_umnozh[i + j + 1] - '0') + carry;
            carry = tmp_num / 10;
            result_umnozh[i + j + 1] = (tmp_num % 10) + '0';
        }
        result_umnozh[i] += carry;
    }

    // Удаление ведущих нулей
    int start_index = 0;
    while (start_index < first_len + second_len - 1 && result_umnozh[start_index] == '0') {
        start_index++;
    }
    if (start_index > 0) {
        int count = 0;
        for (int i = start_index; i < first_len + second_len; i++) {
            result_umnozh[count++] = result_umnozh[i];
        }
        result_umnozh[count] = '\0'; // Обязательное добавление null-terminator в конец
    }
}



void str_to_int(char *str, int *num) {
    *num = 0;
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] >= '0' && str[i] <= '9') {
            *num = *num * 10 + (str[i] - '0');
        }
    }
}

void power(char *base, char *exp, char *result) {
    // Удаление символов новой строки
    base[strcspn(base, "\n")] = 0;
    exp[strcspn(exp, "\n")] = 0;

    // Преобразование показателя степени из строки в число
    int n;
    str_to_int(exp, &n);

    // Проверка на степень 0
    if (n == 0) {
        strcpy(result, "1");
        return;
    }

    // Инициализация результата
    strcpy(result, "1");
    char temp[MAX * 2];

    for (int i = 0; i < n; i++) {
        umnozh(result, base, temp);
        strcpy(result, temp);
    }
}

void factorial(char *n, char *result) {
    // Удаление символов новой строки
    n[strcspn(n, "\n")] = 0;

    // Преобразование n из строки в число
    int num;
    str_to_int(n, &num);

    // Проверка на 0! или 1!
    if (num == 0 || num == 1) {
        strcpy(result, "1");
        return;
    }

    // Инициализация результата
    strcpy(result, "1");
    char tmp[MAX * 2];
    char mlt[MAX];

    for (int i = 2; i <= num; i++) {
        sprintf(mlt, "%d", i); // Преобразование i в строку
        umnozh(result, mlt, tmp); // Умножение result на i
        strcpy(result, tmp); // Обновление result
    }
}

void sum_ot_do(char *first, char *second, char *result) {


    first[strcspn(first, "\n")] = 0;
    second[strcspn(second, "\n")] = 0;
    char tmp_result[MAX * 10] = {0};
    char tmp_tmp_result[MAX * 10] = {0};

    char tmp_first[MAX * 10] = {0};
    char tmp_second[MAX * 10] = {0};
    char zero_one[2];
    zero_one[0] = '1';
    zero_one[1] = '\0';




    for (int i = 0; first[i] != '\0'; i++)
        tmp_first[i] = first[i];
    for (int i = 0; second[i] != '\0'; i++)
        tmp_second[i] = second[i];
    strcpy(tmp_tmp_result, tmp_first);

    while (strcmp(tmp_first, tmp_second))
    {
        add(tmp_first, zero_one, tmp_result);
        add(tmp_tmp_result, tmp_result, tmp_tmp_result);
        strreturn(tmp_result);
        strcpy(tmp_first, tmp_result);
    }

   strcpy(result, tmp_tmp_result);
}


int main() {
    char first_add[MAX * 2] = {0};
    char second_add[MAX * 2] = {0};
    char result_add[MAX * 4 + 1] = {0};

    printf("Vedite 1 chislo summi: ");
    fgets(first_add, 1000, stdin);
    printf("Vedite 2 chislo summi: ");
    fgets(second_add, 1000, stdin);


    add(first_add, second_add, result_add);


    printf("%s\n", result_add);

    char first_del[MAX * 2] = {0};
    char second_del[MAX * 2] = {0};
    char result_del[MAX * 4 + 1] = {0};


    printf("Vedite 1 chislo razn: ");
    fgets(first_del, 1000, stdin);
    printf("Vedite 2 chislo razn: ");
    fgets(second_del, 1000, stdin);

    minus(first_del, second_del, result_del);

    printf("%s\n", result_del);

    char first_umnozh[MAX * 2] = {0};
    char second_umnozh[MAX * 2] = {0};
    char result_umnozh[MAX * 10] = {0};


    printf("Vedite 1 chislo umnozh: ");
    fgets(first_umnozh, 1000, stdin);
    printf("Vedite 2 chislo umnozh: ");
    fgets(second_umnozh, 1000, stdin);

    umnozh(first_umnozh, second_umnozh, result_umnozh);
    printf("%s\n", result_umnozh);



    char osnovn_chis[MAX * 2] = {0};
    char stepen[MAX * 2] = {0};
    char result_vozv_v_step[MAX * 10] = {0};

    printf("Vvedite osnovu: ");
    fgets(osnovn_chis, MAX, stdin);
    printf("Vvedite stepen: ");
    fgets(stepen, MAX, stdin);

    power(osnovn_chis, stepen, result_vozv_v_step);
    printf("%s\n", result_vozv_v_step);



    char chislo[MAX * 2] = {0};
    char result_fact[MAX * 10];
    printf("Vvedite chislo: ");
    fgets(chislo, MAX, stdin);

    factorial(chislo, result_fact);
    printf("%s\n", result_fact);


    char ot[MAX * 2] = {0};
    char d_o[MAX * 2] = {0};
    char result_sum_ot_do[MAX * 2] = {0};

    printf("Vvedite chislo ot: ");
    fgets(ot, MAX, stdin);
    printf("Vvedite chislo do: ");
    fgets(d_o, MAX, stdin);

    sum_ot_do(ot, d_o, result_sum_ot_do);
    printf("%s\n", result_sum_ot_do);


    return 0;
}
