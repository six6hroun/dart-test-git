//арифметические операции в дарт
void main() {
  int a = 10;
  int b = 5;
  int c = a + b; // сложение
  int z = 4 + b;
  int d = a - b; // вычитание
  int e = a * b; // умножение
  int f = a ~/ b; // целочисленное деление
  double h = a / b; // вещественное деление
  int g = a % b; // остаток от деления
  
  //префиксный инкремент
  {  
    int a = 8;
    int b = ++a;
    print(a);   // 9
    print(b);   // 9
  }

  //постфиксный инкремент
  { 
    int c = 8;
    int d = c++;
    print(c);   // 9
    print(d);   // 8
  }

  //префиксный декремент
  { 
    int e = 8;
    int f = --e;
    print(e);   // 7
    print(f);   // 7
  }

  //постфиксный декремент
  {  
    int g = 8;
    int h = g--;
    print(g);   // 7
    print(h);   // 8
  }
}