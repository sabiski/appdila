import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mamyssrestaurant/design/Design.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
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
      // backgroundColor:Colors.grey,
      body: Stack(children: [
        Positioned(
          top: 30,
          left: 20,
          child: Center(
            child: Container(
              width: mywidth * .9,
              height: myheight * .9,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [Colors.grey, Colors.white],
                      end: Alignment.bottomCenter),
                  color: Colors.white,
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Inscription",
                        style: TextStyle(
                            fontFamily: 'Protest_Riot',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 160,
                      // color: Colors.amber,
                      child: Lottie.asset(
                        "animations/animation-2.json",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // firts field

                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      width: 300,
                      height: 319,
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
                                  hintText: 'Pseudo ',
                                  hintStyle:
                                      TextStyle(color: Design.colorPrincipal),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
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
                                    Icons.phone,
                                    color: Design.colorPrincipal,
                                  ),
                                  hintText: 'Numero de telephone',
                                  hintStyle:
                                      TextStyle(color: Design.colorPrincipal),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                          SizedBox(
                            height: 15,
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
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
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
                                onPressed: () {},
                                child: const Text(
                                  "Inscription",
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

                    // const SizedBox(
                    //   height: 15,
                    // ),

                    // SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ),
        ),

        //  BackButton()
      ]),
    );
  }
}
