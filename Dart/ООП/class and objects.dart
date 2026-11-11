//Классы и объекты
//Создание объекта и конструктор
class Person{}
void test1(){
  //Person tom; // перемнная класса Person
  Person tom = Person(); //объект класса персон //создан с помощью конструктора по умолчянию
  print(tom);
}

//Поля и методы класса
class Person2{
  String name = "";
  int age = 0;
  void display(){
    print("Имя: ${name}, Возраст: ${age}");
  }
}

void test2(){
  Person2 tom = Person2();
  print(tom.age);
  print(tom.name);
  tom.display();
  tom.name = "Умар";
  tom.age = 7;
  tom.display();
}

//Инициализация полей
class Person3{
  String? name;
  int? age;
  void display(){
    print("Имя: ${name}, Возраст: ${age}");
  }
}

void test3(){
  Person3 tom = Person3();
  tom.display();
  tom.name = "Гурыч";
  tom.age = 21;
  tom.display();
}

//Каскадная операция
void test4(){
  Person3 tom = Person3()
    ..display()
    ..name = "Гурыч"
    ..age = 21
    ..display();
}

//Копирование объектов
class Person4{
  String? name;
  int? age;
  void display(){
    print("Имя: ${name}, Возраст: ${age}");
  }
}

void test5(){
  Person4 tom = Person4();
  tom.name = "Гурыч";
  tom.age = 21;
  tom.display();
  Person4 bob = tom;
  bob.name = "Умар"; //меняем у боба имя и у тома тоже поменяется имя, так как они по сути ссылаются на один объект класса
  bob.display();
  print(tom.name); //Умар
}

void main(){
  test5();
}