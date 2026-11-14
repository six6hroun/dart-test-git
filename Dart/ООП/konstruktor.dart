class Person{
  String name = "";
  int age = 0;
  Person (String name, int age){
    this.name = name;
    this.age = age;
    //сокращенная версия Person(this.name, this.age)
  }
  void display(){
    print("$name , $age");
  }
}

void test1(){
  Person tom = Person("Том", 20);
  tom.display();
}

//Именованные конструкторы
class User {
  String name;
  int age;
  int? id;
  String? email;

  // 1. Обычный конструктор (создание с нуля)
  User(this.name, this.age);

  // 2. Конструктор из базы данных (нам важен ID)
  User.fromDb(this.id, this.name, this.age);

  // 3. Конструктор из JSON (нам важен email, полученный от сервера)
  User.fromJson(Map<String, dynamic> json) 
      : name = json['name'],
        age = json['age'],
        email = json['email'];

  // 4. Конструктор для гостя (пустой пользователь)
  User.guest() : name = "Гость", age = 0;
}

void test2(){
  var newUser = User("Иван", 25);             // Обычный
  var dbUser = User.fromDb(1, "Петр", 30);    // Из базы
  var guest = User.guest();                   // Гость 
}

//Обязательные и необязательные параметры
class Person2{
  String name = "";
  int age;
  Person2({required this.name, this.age = 0}); //имя обязательно, возраст нет
  void display(){
    print("$name , $age");
  }
}

void test3(){
  Person2 tom = Person2(name: "Том", age: 20);
  Person2 bob = Person2(name: "Том");
  tom.display();
}

//Инициализаторы
/*
-По умолчанию пиши ClassName(this.field1, this.field2);. Это красиво и понятно.
-Если поле final и вычисляется из других данных — используй : field3 = field1 + field2.
-Если внутри конструктора тебе нужно выполнить сложную логику (например, if (age < 18) { print("Ты ребенок"); })
 пиши тело { ... }. Но поля все равно инициализируй через this.field в параметрах (или через :). */
class Person3{
  String name;
  int age;
  Person3(String name, int age) : this.name = name, this.age = age{ //Инициализаторы представляют способ инициализации полей класса
    print("Пользователь создан");
  }
  void display(){
    print("$name , $age");
  }
}

void test4(){
  Person3 tom = Person3("Том", 20);
  tom.display();
}

void main(){
  test4();
}