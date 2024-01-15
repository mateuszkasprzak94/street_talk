import 'package:flutter/material.dart';
import 'package:street_talk/app/api/firebase_api.dart';
import 'package:street_talk/app/app.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotifications();

  configureDependencies();
  runApp(const MyApp());
}
