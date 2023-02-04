import 'dart:io';

import 'student.dart';

class utils{
  List<Student> getProduct(){
    File file = File('student.csv');
    String content = file.readAsStringSync();
    List<String> lines = content.split('\n');
    List<Student> student =[];

    for(int i=0; i<lines.length;i++){
      List<String> line = lines[i].split(',');
      Student s = Student(int.parse(line[0]), line[1].toString(), line[2].toString(), line[3].toString());

      student.add(s);
    }

    return student;
  }
}