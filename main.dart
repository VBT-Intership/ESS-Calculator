import 'dart:io';

import 'calculator.dart';

void main(List<String> args) {
  Calculator calculator = new Calculator();

  print("1.Sayıyı Giriniz: ");
  var firstVal = double.parse(stdin.readLineSync());
  print("2.Sayıyı Giriniz: ");
  var secondVal = double.parse(stdin.readLineSync());

  print(
      "Yapmak İstediğiniz İşlemi Seçiniz: \n1.Toplama\n2.Çıkarma\n3.Çarpma\n4.Bölme");
  var operation = int.parse(stdin.readLineSync());

  switch (operation) {
    case 1:
      {
        double result = calculator.sum(firstVal, secondVal);
        print("Sonuç: " + result.toString());
        break;
      }
    case 2:
      {
        double result = calculator.substract(firstVal, secondVal);
        print("Sonuç: " + result.toString());
        break;
      }
    case 3:
      {
        double result = calculator.multiply(firstVal, secondVal);
        print("Sonuç: " + result.toString());
        break;
      }
    case 4:
      {
        double result = calculator.divide(firstVal, secondVal);
        print("Sonuç: " + result.toString());
        break;
      }
    default:
      {
        break;
      }
  }
}
