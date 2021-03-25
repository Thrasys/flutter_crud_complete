//obj
import 'package:flutter/material.dart';

class User {
  //atributos
  final String id;
  final String name;
  final String email;
  final String avatarUrl;
//constructo
  const User({ this.id, @required this.name,@required this.email,@required this.avatarUrl});

}
