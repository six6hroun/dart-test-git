// Nullable типы в дарт
void main() {
  int? a; // nullable тип
  a = null; // можно присвоить null
  print(a); // выводит null

  int b = 5; // non-nullable тип
  // b = null; // ошибка компиляции, нельзя присвоить null
  print(b); // выводит 5

  String? c; // nullable тип
  c = "Hello"; // можно присвоить строку
  print(c); // выводит Hello

  c = null; // можно присвоить null
  print(c); // выводит null

  // Использование оператора "??" для проверки на null
  String? d;
  String result = d ?? "Default value"; // если d равно null, присваиваем "Default value"
  print(result); // выводит Default value

  int? a;
  a ??= 10;
  print(a);
}