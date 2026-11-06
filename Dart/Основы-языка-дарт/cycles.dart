//Циклы в дарт
void main() {
  for (int i = 1; i < 9; i++){
    print("$i * $i = ${i *i} \n");
  }

  //цикл do выполнится хотя бы 1 раз вне зависимости от того, истинно условие или нет
  int n = 6;
  do{
    
      print(n);
      n++;
  }
  while (n < 5);

  int n = 0;
  while (n < 5){
    print(n);
    n++;
  }

  //Операторы continue и break
  for(int i=0; i <= 10; i++)
  {
    if(i%2==1) // если остаток от деления на 2 - 1, то есть число нечетное
    {
        continue;   // переходим к следующей итерации
    }
    print(i);
  }

  int sum = 0;
  for(int i=0; i<10; i++)
  {
    sum += i;
    if(sum > 10) // если сумма больше 10
    {
      break;  // выходим из цикла
    }
  }
  print(sum); // 15

}