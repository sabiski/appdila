import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mamyssrestaurant/design/Design.dart';
import 'package:mamyssrestaurant/views/accueil.dart';
import 'package:mamyssrestaurant/views/home.dart';
import 'package:page_transition/page_transition.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.navigate_before,
                color: Design.colorPrincipal,
                size: 35,
              ))),
      body: Stack(children: [
        Positioned(
          top: 90,
          left: 20,
          child: Center(
            child: Container(
              width: mywidth * .9,
              height: myheight * .7,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [Colors.grey, Colors.white],
                      end: Alignment.bottomCenter),
                  // color: Colors.white,
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Connexion",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Protest_Riot'),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 150,
                      // color: Colors.amber,
                      child: Lottie.asset(
                        "animations/animation-2.json",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // firts field

                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      width: mywidth * .9,
                      height: myheight * .33,
                      // color: Colors.amber,
                      child: Form(
                          child: Column(
                        children: [
                          Container(
                            width: 300,
                            height: 60,
                            // color: Colors.blue,
                            decoration: BoxDecoration(
                                color: Design.blanc,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person,
                                    color: Design.colorPrincipal,
                                  ),
                                  hintText: 'pseudo ou numero de tel',
                                  hintStyle:
                                      TextStyle(color: Design.colorPrincipal),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none
                                      // borderRadius: BorderRadius.circular(10)
                                      )),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            height: 60,
                            // color: Colors.blue,
                            decoration: BoxDecoration(
                                color: Design.blanc,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              obscureText: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.lock,
                                    color: Design.colorPrincipal,
                                  ),
                                  hintText: 'Mot de passe ',
                                  hintStyle:
                                      TextStyle(color: Design.colorPrincipal),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none
                                      // borderRadius: BorderRadius.circular(10)
                                      )),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: mywidth * .8,
                            height: myheight * .08,
                            // color: Colors.amber,
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.white54,
                                  blurRadius: 2,
                                  blurStyle: BlurStyle.outer)
                            ]),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 20,
                                    backgroundColor: const Color(0xFF197941),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      child: const Home(),
                                      type: PageTransitionType.rightToLeft,
                                      //  childCurrent: widget,
                                      duration:
                                          const Duration(milliseconds: 500),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Se connecter",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontFamily: 'Protest_Riot'),
                                )),
                          ),
                        ],
                      )),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                        onTap: () {},
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Mot de passe oublier?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF197941)),
                          ),
                        ),
                      ),
                    ),
                    // Text("data"),
                    // Text("data"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
