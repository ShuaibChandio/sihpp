import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sihpp/screens/welcome/welcome_screen.dart';

import 'constant/themedata.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);

 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckModeBanner: false,
      title: 'SIHPP',
      theme: themeData,
      // ThemeData(
      //
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: WelcomeScreen(),
    );
  }
}

