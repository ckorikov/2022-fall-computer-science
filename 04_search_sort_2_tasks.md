# Практика

## Разминка

1. Создайте в своём репозитории `2022-polytech-%фамилия%` директорию `04_search_sort/intro_sort`
2. Настройте cmake-проект 
3. Завершите программу
```cpp
#include <random>
#include <iostream>

void fill_array_random(int arr[], int n, int a, int b)
{
    std::random_device dev;
    std::mt19937 rng(dev());
    std::uniform_int_distribution<std::mt19937::result_type> dist(a,b);
    
    for(int i=0; i<n; ++i)
    {
        arr[i] = dist(rng);
    }
}

void print_array(int arr[], int n, bool show_index = false)
{
    // Напишите функцию
}

int main()
{
    int arr[10];
    int n = sizeof(arr) / sizeof(arr[0]);
    fill_array_random(arr, n, 0, 100);
    print_array(arr, n);
    return 0;
}
```
4. Реализуйте функцию `print_array` которая выводи массив на экран в следующем виде: `{a, b, c, d, e, f}`, где буквы обозначают элементы массива
5. Если `show_index` равен `true`, то программа должна выводить массив с индексами:  `{0: a, 1: b, 2: c, 3: d, 4: e, 5: f}`
6. Изучите реализацию функции `fill_array_random`
7. Отправьте решение на GitHub

## Задание
1. TBD

## Домашнее задание
1. TBD


*Комментарии*
- В этом файле есть опечатки, вы можете их исправить через pull request.
- Всю работу удобно вести в отдельной ветке и затем влить готовый результат в основную ветку.