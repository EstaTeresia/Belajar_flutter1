import "dart:io";
import "dart:math";

double input(){
  print("enter the number for operation: ");
  double myNumber = double.parse(stdin.readLineSync()!);
  return myNumber;
}

String operationChoice(){
  print("Enter the operand e.g '+','-','/','*'");
  String operandInput = stdin.readLineSync()!;
  return operandInput;
}

void main() {
  double num1 = input();
  double num2 = input();
  String choice = operationChoice();
  double answer = 0.0;

  if(choice == '+'){
    answer = num1 + num2;
    print("${num1} ${choice} ${num2} = ${answer}");
  } else if (choice == '-'){
    answer = num1 - num2;
    print("${num1} ${choice} ${num2} = ${answer}");
  } else {
    print (' Invalid input, please review');
  }
}
