import 'package:flutter/material.dart';
import 'package:street_talk/app/app.dart';
import 'package:street_talk/app/injection_container.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}
