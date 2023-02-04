import 'dart:io';

import 'student.dart';

class WelcomeScreen{
  int welcome(){

    print("|************************************************|");
    print("|--------------------welcome---------------------|");
    print("|************STUDENT MANAGEMENT SYSTEM***********|\n");
    print("\t\t\tMAIN MENU");
    print("===================================================");
    print("[1] List Student");
    print("[2] Add Student");
    print("[3] Search Student");
    print("[4] Delete Student");
    print("[5] Update Student");
    print("[6] Sort Student");
    print("===================================================");

    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    return choice;
  }

Student askStudentDetails(){
  print("Enter Student id: ");
  int? studentId = int.parse(stdin.readLineSync()!);
  print("Enter Student name");
   String? studentName = stdin.readLineSync();
   print("Enter Student Address: ");
    String? studentAddress = stdin.readLineSync();
    print("Enter Student Phone Number: ");
     String? studentPhoneNumber = stdin.readLineSync();

     Student s = Student(studentId, studentName!, studentAddress!, studentPhoneNumber!);
     return s;
}

}