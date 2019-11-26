import 'package:flutter/widgets.dart';

class PersonModal{
  final String name;
  final DateTime dob;

  PersonModal({
    @required this.name,
    this.dob
  });

  get age => _age();
  get map => _map();


  int _age(){
    return DateTime.now().year - dob.year;
  }

  Map<String, dynamic> _map(){
    return {
      'name': name,
      'dob': dob,
    };
  }
}