import "dart:io";   // необходимо для функции stdin.readLineSync()
 
void main() {
  // Выводим подсказку для пользователя
  stdout.write("Введите ваше имя: ");

  // Читаем строку из консоли
  var name = stdin.readLineSync();

  print("Привет, $name!");
}