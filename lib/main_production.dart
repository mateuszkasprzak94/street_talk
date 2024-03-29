import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:street_talk/app/api/firebase_api.dart';
import 'package:street_talk/app/app.dart';
import 'package:street_talk/app/core/enums/config.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';

void main() async {
  Config.appFlavor = Flavor.production;

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotifications();

  configureDependencies();

  runApp(
    MyApp(connectivity: Connectivity()),
  );
}
