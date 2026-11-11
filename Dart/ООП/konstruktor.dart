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

void main(){
  test1();
}