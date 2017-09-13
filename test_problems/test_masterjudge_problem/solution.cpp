#include <iostream>
#include <sys/time.h>

using namespace std;

// used to contol execution time
void wait_milliseconds(int ms)
{
	int diff;
	timespec start, current;
	clock_gettime(CLOCK_THREAD_CPUTIME_ID, &start);
	do {
		clock_gettime(CLOCK_THREAD_CPUTIME_ID, &current);
		diff = int( current.tv_nsec - start.tv_nsec );
	} while (diff < 1000000 * (ms + 1));
}

int main()
{
    int n;
    cin >> n;

    // force execution time
    wait_milliseconds((n % 4) * 200);
    
    // force memory consumption
    char* mem = new (nothrow) char[(n % 4) * 10 * 1024 * 1024];

    if (n < 4) {
        cout << n;
    } else if (n < 8) {
        cout << n + 1;
    } else if (n < 12) {
        while (true) {}
    } else {
        cout << n / 0;
    }

    return 0;
}
