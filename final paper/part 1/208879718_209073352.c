#include <stdio.h>

int main()
{
    int arr[] = { 23, 67, -12, 89, 3, 150, -45 };
    int number = sizeof(arr) / sizeof(arr[0]);
    int index, max;

    // Initialize max with the first element of the array
    max = arr[0];

    // Iterate through the array starting from the second element
    for (index = 1; index < number; index++){
        // If current element is greater than max, update max
        if (arr[index] > max){
            max = arr[index];
        }
    }

    return 0;
}
