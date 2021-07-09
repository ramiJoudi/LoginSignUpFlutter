import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:xdtflutter/DashboardScreen.dart';
import 'package:xdtflutter/register.dart';

import 'GooglePixel51.dart';
import 'iPhone6781.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => iPhone6781(),
        '/login': (context) => iPhone6781(),
        '/register': (context) => register(),
        '/dashboard': (context) => DashboardScreen(),
      },
      initialRoute: '/login',
      title: 'Flutter Demo',
    );
  }
}
