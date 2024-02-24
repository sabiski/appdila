import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/app/app.dart';



class AppRoutes{
  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) => const App());
    }
  } 
}