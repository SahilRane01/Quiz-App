import 'dart:math';
import 'dart:io';
import 'quiz_brain.dart';

void main(){
  QuizBrain quizBrain = QuizBrain();
  print(quizBrain);

  Car audi = Car();
  print(audi.numberOfSeats);
  audi.drive();
}

class Car{
  int numberOfSeats = 5;

  void drive(){
    print("The wheels are spinnin!!");
  }

}
