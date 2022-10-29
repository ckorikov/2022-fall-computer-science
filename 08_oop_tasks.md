# Практика

## Разминка
1. TBD

## Задание

1. Создайте в своём репозитории `2022-polytech-%фамилия%` директорию `09_oop`
2. Cоздайте пустой `README.md` файл
3. В директории `08_pointers/intro` создайте cmake-проект
4. Скачайте [файл](assets/doctest.cmake) и положите его в директорию `09_oop/intro`
5. Добавьте файл `CMakeLists.txt` с таким содержанием

```cmake
cmake_minimum_required(VERSION 3.12 FATAL_ERROR)
project(complex LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)

include(doctest.cmake)
add_executable(tests complex.cpp test_complex.cpp)
target_link_libraries(tests PRIVATE doctest)
```

6. Добавьте файл `test_complex.cpp` с таким содержанием
```cpp
#include <doctest.h>
#include <complex.h>

TEST_CASE("sum of complex numbers")
{
  auto c1 = Complex(1, 0);
  auto c2 = Complex(2, 0);
  auto c3 = Complex(3, 0);
  CHECK_EQ(c1+c2, c3);
}

```
7. Реализуйте класс комлексных чисел с поддержкой сложения, вычитания, модуля
8. Отправьте решение на GitHub


## Домашнее задание
1. TBD

*Комментарии*
- В этом файле есть опечатки, вы можете их исправить через pull request.
- Всю работу удобно вести в отдельной ветке и затем влить готовый результат в основную ветку.
