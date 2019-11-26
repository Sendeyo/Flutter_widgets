import 'package:widgets/modals/institution.dart';
import 'package:widgets/modals/person.dart';

class StudentModal{
  final String image;
  final PersonModal person;
  final InstitutionModal institution;
  final List<CoursesModal> courses;
  final LevelEnum level;

  StudentModal({
    this.image = '',
    this.person,
    this.institution,
    this.courses,
    this.level = LevelEnum.one,
  });

  get totalPoints => _totalPoints();
  get map => _map();

 double _totalPoints(){
   double _t =0;
   courses.forEach((item){
     _t += item.points;
   });
   return _t;
 }

 Map<String, dynamic> _map(){

   List<Map<String, dynamic>> _mapCourses(){
     List<Map<String, dynamic>> _lst =[];
     courses.forEach((item){
       _lst.add(item.map);
     });
     return _lst;
   }

   return {
     'image': image,
     'person': person.map,
     'institution': institution.map,
     'courses': _mapCourses(),
     'level': level,
   };
 }


}

enum LevelEnum{
  one,
  two,
  three,
  four
}

class CoursesModal{
  final String name;
  final String code;
  final double points;

  CoursesModal({this.name, this.code, this.points});

  get map => _map();

 Map<String, dynamic> _map(){
   return {
     'name': name,
     'code': code,
     'points': points,
   };
 }

}