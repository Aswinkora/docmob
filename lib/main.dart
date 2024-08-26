import 'package:docmob/Screen/home.dart';
import 'package:docmob/Screen/login.dart';
import 'package:docmob/Screen/profile.dart';
import 'package:docmob/Screen/tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Tabs(user: '',),
    debugShowCheckedModeBanner: false,
  ));
}
