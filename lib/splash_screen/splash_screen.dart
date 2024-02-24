import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:mamyssrestaurant/app/app.dart';
import 'package:mamyssrestaurant/design/Design.dart';
import 'package:mamyssrestaurant/views/accueil.dart';
import 'package:mamyssrestaurant/views/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const App();
      }));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Design.blanc,
      extendBody: true,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
               decoration: BoxDecoration(
                // color: Design.blanc,
                gradient: LinearGradient(
                  begin: Alignment.center,
                  colors: [Colors.white,Design.colorPrincipal],
                  end: Alignment.topLeft,
                 
                  )
              ),
            child: Image.asset("assets/images/GUILAMBU-removebg-preview.png",fit: BoxFit.contain)),
           
     ] ),
    );
  }
}
