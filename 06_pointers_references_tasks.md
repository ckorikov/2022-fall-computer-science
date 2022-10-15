# Практика

## Разминка

1. Создайте в своём репозитории `2022-polytech-%фамилия%` директорию `06_pointers_references`
2. Cоздайте пустой `README.md` файл
3. В директории `intro` создайте cmake-проект
4. Завершите программу, написав функцию, которая возвращает длину строки

```cpp
#include <cassert>

unsigned int length(const char* str)
{
    // Решение тут
}

int main()
{
    assert(length("a") == 1);
    assert(length("ab") == 2);
    assert(length("") == 0);
    assert(length("hello world") == 11);
    assert(length(nullptr) == 0);
    return 0;
}

```

6. Отправьте решение на GitHub

## Задание
1. TBD


## Домашнее задание
1. TBD

*Комментарии*
- В этом файле есть опечатки, вы можете их исправить через pull request.
- Всю работу удобно вести в отдельной ветке и затем влить готовый результат в основную ветку.
