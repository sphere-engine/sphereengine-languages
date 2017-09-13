#include "spoj.h"
#include <cstdio>
 
using namespace std;
 
int main()
{
    spoj_init();
    int problem_n;
    int user_n;

    fscanf(spoj_p_out, "%d", &problem_n);
    fscanf(spoj_t_out, "%d", &user_n);

    if (problem_n == 0) {
        fprintf(spoj_score, "0");
    } else if (problem_n == 1) {
        fprintf(spoj_score, "1");
    } else if (problem_n == 2) {
        fprintf(spoj_score, "3.14");
    } else if (problem_n == 3) {
        fprintf(spoj_score, "16");
    }

    if (problem_n == user_n) {
        return SPOJ_RV_POSITIVE;
    } else {
        return SPOJ_RV_NEGATIVE;
    }
}
