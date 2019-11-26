import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/modals/institution.dart';
import 'package:widgets/modals/person.dart';
import 'package:widgets/modals/student.dart';
import 'package:widgets/modules/studentModule.dart';


class Inputs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    StudentModule _studentModule = Provider.of<StudentModule>(context);
    List<StudentModal> _students = _studentModule.students;
    return ChangeNotifierProvider<StudentModule>(
      builder: (context) => StudentModule(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Input Widgets"),
          actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: (){

            //// add
            StudentModal max =  StudentModal(
              person: PersonModal(name: 'Genius Awesome', dob: DateTime(1996)),
              institution: InstitutionModal(name: 'Home Alone', county: 'Home'),
              courses: [CoursesModal(name: 'A', code: 'A1',points: 100)]
            );
            _studentModule.addStudents = max;
            
          },)],
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: _students.length,
          itemBuilder: (BuildContext context, int index){
            return StudentContainer(student: _students[index]);
          },
        )
      ),
    );
  }
}

class StudentContainer extends StatefulWidget {
  final StudentModal student;
  StudentContainer({this.student});

  @override
  _StudentContainerState createState() => _StudentContainerState();
}

class _StudentContainerState extends State<StudentContainer> {
  double ind = 0;
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(20.0*ind, 0, 0),
      child: Card(
        child: ListTile(
          onTap: (){
            setState(() {
              if(ind > 9){
                ind = 0;
              } else {
                ind = 10;
              }
            });
          },
          leading: Text(widget.student.image),
          title: Text(widget.student.person.name),
          subtitle: Text(widget.student.institution.name),
        ),
      ),
    );
  }
}
