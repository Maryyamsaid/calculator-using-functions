//import 'dart:_js_helper';
import 'dart:io';

main() {
  String choice1 = '';
  do {
    stdout.write("+ for add\n");
    stdout.write("- for subtract\n");
    stdout.write('* for mul\n');
    stdout.write('/ for divid\n');
    stdout.write('1 for stop\n');

    String? choice1 = stdin.readLineSync();
    //double choice = double.parse(choice1!);
    switch (choice1) {
      case '+':
        double sum = add(num1(), num1());
        print(sum);
        break;
      case '-':
        double sum = sub(num1(), num1());
        print(sum);
        break;
      case '*':
        double sum = mult(num1(), num1());
        print(sum);
        break;
      case '/':
        if (num1 == 0) {
          print("number not divid by zero");
        } else {
          double sum = div(num1(), num1());
          print(sum);
        }
        break;
      default:
        print("invalid");
        break;
    }
  } while (choice1 != 1);
}

// function to take input
double num1() {
  stdout.write('enter number a=');
  String? num = stdin.readLineSync();
  double a1 = double.parse(num!);
  return a1;
}

// double num2() {
//   stdout.write('enter number b=');
//   String? num1 = stdin.readLineSync();
//   double b1 = double.parse(num1!);
//   return b1;
//}

// calculator functions
double add(double a, double b) {
  double sum = a + a;
  print("add=$sum");

  return sum;
}

double sub(double a, double b) {
  double sum = a - a;
  print("sub=$sum");
  return sum;
}

double div(double a, double b) {
  double sum = a / a;
  print("divid=$sum");
  return sum;
}

double mult(double a, double b) {
  double sum = a * a;
  print("multiply=$sum");
  return sum;
}
