import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/app/app.dart';
import 'package:mamyssrestaurant/authentifications/connexion/connexion.dart';
import 'package:mamyssrestaurant/authentifications/inscription/inscription.dart';
import 'package:mamyssrestaurant/splash_screen/splash_screen.dart';
import 'package:mamyssrestaurant/views/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: router.onGenerateRoute,
      title: ' OVM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF197941 )),
        useMaterial3: true,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Lobster-regular',
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          foregroundColor: Colors.white,
        ),
      ),
      home: const SplashScreen() ,
    );
  }
}
