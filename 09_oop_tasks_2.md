# Практика

## Разминка

1. Создайте в своём репозитории `2022-polytech-%фамилия%` директорию `09_oop`
2. Cоздайте пустой `README.md` файл
3. В директории `09_oop/intro` создайте cmake-проект
4. Дополните пример с множественным наследованием из лекции: реализуйте конструкторы и деструкторы всех классов
5. В конструкторе выводите в cout `ИмяКласса::ctor`, в деструктора — `ИмяКласса::dtor`
6. Приведите в файле `README.md` пример вывода для случая с виртуальным наследованием и для случая без виртуального наследования
7. Отправьте решение на GitHub


## Задание

1. В директории `09_oop/json` создайте cmake-проект
2. Реализуйте иерархию классов, которая может описывать элементы подмножества языка JSON: https://ru.wikipedia.org/wiki/JSON (число, строка, булевое значение, массив)
3. Реализуйте методы, позволяющие выввести заданный C++ классами JSON-объект вывести в cout
4. Напищите тесты с помощью doctest
5. Отправьте решение на GitHub


## Домашнее задание

1. В директории `09_oop/visitor` создайте cmake-проект
2. Перенесите написанную ниже программу в проект
3. В программе представлен пример реализации паттерна «Посетитель», подробнее о нём можно почитать по ссылке https://refactoring.guru/ru/design-patterns/visitor
4. Добавьте в программу новую геометрическую фигуру: Triangle
5. Добавьте в программу 2 новых посетител: Perimeter (вычисляет периметр фигуры), Square (вычисляет площадь фигуры)
6. Приведите примеры использования посетителей
7. Отправьте решение на GitHub

```cpp
#include <iostream>
#include <vector>

using namespace std;

struct Rectangle;
struct Circle;

struct IVisitable
{
    virtual void accept(Rectangle& r) = 0;
    virtual void accept(Circle& c) = 0;
    
    virtual ~IVisitable() {}
};

struct IElenent
{
    virtual void visit(IVisitable& v) = 0;
    
    virtual ~IElenent() {}
};

struct Rectangle: IElenent
{
    void visit(IVisitable& v) final
    {
        v.accept(*this);
    }
};

struct Circle: IElenent
{
    void visit(IVisitable& v) final
    {
        v.accept(*this);
    }
};


struct Printer: IVisitable
{
    void accept(Rectangle& r) final
    {
        cout << "Rectangle" << endl;
    }   
    void accept(Circle& c) final
    {
        cout << "Circle" << endl;
    }
};


int main()
{
    std::vector<IElenent*> elements; 
    
    elements.push_back(new Circle);
    elements.push_back(new Rectangle);

    Printer p;
    for(auto& el: elements)
    {
        el->visit(p);
    }
}
```

*Комментарии*
- В этом файле есть опечатки, вы можете их исправить через pull request.
- Всю работу удобно вести в отдельной ветке и затем влить готовый результат в основную ветку.
