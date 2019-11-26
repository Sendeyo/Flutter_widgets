import 'package:flutter/widgets.dart';
import 'package:widgets/modals/student.dart';

class StudentModule extends ChangeNotifier{
  List<StudentModal> _students = [];

  get students => _students;

  set addStudents (StudentModal st){
    _students.add(st);
    notifyListeners();
  }

  set delete (int index){
    _delete(index);
    notifyListeners();
  }


  void _delete(int index){
    _students.removeAt(index);
  }
}