import 'package:flutter/material.dart';

class InstitutionModal{
  final String name;
  final String county;

  InstitutionModal({
    @required this.name,
    @required this.county
  });

  get map => _map();

  
  Map<String, dynamic> _map(){
    return {
      'name': name,
      'county': county,
    };
  }
}