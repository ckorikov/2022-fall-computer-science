# Практика

## Разминка

1. Создайте в своём репозитории `2022-polytech-%фамилия%` директорию `08_oop`
2. Cоздайте пустой `README.md` файл
3. В директории `08_oop/intro` создайте cmake-проект
4. Напишите класс `String`, используя код из лекции (разместит код в новых файлах `String.h` и `String.cpp`)
5. Напишите нереализованные методы
6. Добавьте оператор сложения строк (конкатенация)
7. Добавьте оператор вывода `operator<<` строки в `std::cout`
8. Приведите пример использования класса и его методов
9. Отправьте решение на GitHub


## Задание

1. В директории `08_oop/complex` создайте cmake-проект
2. Скачайте [файл](assets/doctest.cmake) и положите его в директорию `08_oop/complex`
3. Добавьте файл `CMakeLists.txt` с таким содержанием

```cmake
cmake_minimum_required(VERSION 3.12 FATAL_ERROR)
project(complex LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)

include(doctest.cmake)
add_executable(tests custom_complex.cpp test_complex.cpp)
target_link_libraries(tests PRIVATE doctest)
```

4. Добавьте файл `test_complex.cpp` с таким содержанием
```cpp
#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <doctest.h>
#include "custom_complex.h"

TEST_CASE("sum of complex numbers")
{
  CHECK_EQ(Complex(1, 0)+Complex(2, 0), Complex(3, 0));
  CHECK_EQ(Complex(-1, 0)+Complex(2, 0), Complex(1, 0));
  CHECK_EQ(Complex(1, 1)+Complex(0, 2), Complex(1, 3));
  CHECK_EQ(Complex(0, -2)+Complex(0, 3), Complex(0, 1));
}

TEST_CASE("sub of complex numbers")
{
  CHECK_EQ(Complex(1, 0)-Complex(2, 0), Complex(-1, 0));
  CHECK_EQ(Complex(-1, 0)-Complex(2, 0), Complex(-3, 0));
  CHECK_EQ(Complex(1, 1)-Complex(0, 2), Complex(1, -1));
  CHECK_EQ(Complex(0, -2)-Complex(0, 3), Complex(0, -5));
}

TEST_CASE("abs of complex numbers")
{
  CHECK_EQ(Complex(1, 0).abs(), 1);
  CHECK_EQ(Complex(-1, 0).abs(), 1);
  CHECK_EQ(Complex(1, 1).abs(), doctest::Approx(1.41421).epsilon(0.01));
  CHECK_EQ(Complex(0, -2).abs(), 2);
}

```
5. Реализуйте класс комлексных чисел с поддержкой сложения, вычитания, модуля и сравнения на равенство `operator==`
6. Отправьте решение на GitHub


## Домашнее задание

1. В директории `08_oop/students` создайте cmake-проект с использованием doctest
2. Напишите программу, которая управляет списком студентов
- Реализуйте класс `Student`, который содержит имя и оценку студента
- Добавьте класс `StudenList`, который содержит список студентов (используйте массив)
- Добавьте в класс `StudenList` методы, позволяющие добавить студента, удалить студента, поставить оценку студенту, получить среднюю оценку студентов, спиоск лучших студентов (высокая оценка), список худших студентов (низка оценка)
- Добавьте возможность выводить список студентов в стандартный поток `std::cout`
4. Напишите тесты для с использованием doctest 
5. Отправьте решение на GitHub

*Комментарии*
- В этом файле есть опечатки, вы можете их исправить через pull request.
- Всю работу удобно вести в отдельной ветке и затем влить готовый результат в основную ветку.
- Чтобы скачать файл с GitHub, используя web-интерфейс, его удобно представить в raw-виде (кнопка в интерфейсе GitHub).
- Сравнение чисел с плавающей точкой в doctest: [Floating point comparisons](https://github.com/doctest/doctest/blob/master/doc/markdown/assertions.md#floating-point-comparisons).
- Операторы в С++: [operator overloading](https://en.cppreference.com/w/cpp/language/operators).
- Создавая оператор `operator+`, удобно создать и оператор `operator+=`, тогда реализация первого состоит из создания временного объекта `tmp` и вызова у него `+=`.
