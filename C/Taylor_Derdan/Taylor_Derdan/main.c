#include <stdio.h>
#include <math.h>

int n_max;

double ryad_taylor(int n, double x) {
    double sum = 0.0;
    double ch_pri_dannom_n;
    for (int i = 0; i <= n; i++) {
        ch_pri_dannom_n = pow(-1, i)/ tgamma(2 * i + 2) * pow(x, 2 * i + 1);
        sum += ch_pri_dannom_n;
    }
    return sum;
}

double ryad_taylor_s_max_tochnostiu(double x) {
    double sum = 0.0;
    double ch_pri_dannom_n = x;
    double eps = 0.00000000001;
    int n = 0;
    while (fabs(ch_pri_dannom_n) > eps) {
        sum += ch_pri_dannom_n;
        ch_pri_dannom_n *= -x * x / ((2 * n + 2) * (2 * n + 3));
        n++;
    }

    n_max = n;

    return sum;
}

int main() {
    int n;
    double x;

    printf("Введите значение n: ");
    scanf("%d", &n);
    printf("Введите значение x: ");
    scanf("%lf", &x);
    printf("\n");
    printf("Сумма ряда Тейлора (до n-ого члена): %lf\n", ryad_taylor(n, x));
    printf("\n");
    printf("Сумма ряда Тейлора (с максимальной точностью): %lf\n", ryad_taylor_s_max_tochnostiu(x));
    printf("N, при которой сумма ряда Тейлора имеет максимальную точность: %d", n_max);
    return 0;
}
