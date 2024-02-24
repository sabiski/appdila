import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mamyssrestaurant/authentifications/connexion/connexion.dart';
import 'package:mamyssrestaurant/authentifications/inscription/inscription.dart';
import 'package:mamyssrestaurant/design/Design.dart';
import 'package:page_transition/page_transition.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight= MediaQuery.of(context).size.height;

    return Scaffold(
     
      // backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration:  const BoxDecoration(
                // color: Design.blanc,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.grey,Colors.white],
                  end: Alignment.bottomCenter
                  )
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top:80.0),
                    child: Text(
                      "GUILAMBU service",
                      style: TextStyle(
                        fontFamily: 'Protest_Riot',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                 Lottie.asset(
                  
                  "animations/animation-1.json",
                  height: 300,
                  width: 300,
                  
                 
                 ),
                 const SizedBox(height: 70,),
                  Container(
                    width: mywidth*.9,
                    height: myheight*.08,
                    // color: Colors.amber,
                       decoration:  BoxDecoration(
                    color: Design.colorPrincipal,
                    borderRadius:BorderRadius.circular(10)
                    ),
                    child: MaterialButton(
                   
                      onPressed: (){
                           Navigator.push(
                          context,
                          PageTransition(
                            child: const Connexion(),
                            type: PageTransitionType.rightToLeft,
                            //  childCurrent: widget,
                            duration: const Duration(milliseconds: 500),
                          ),
                        );
                    ;

                    
                      }, child: const Text("Connexion",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Protest_Riot')
                      )),
                  ),

                  const SizedBox(height: 20,),
                    Container(
                    width: mywidth*.9,
                    height: myheight*.08,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                      color: Design.colorPrincipal,
                      borderRadius: BorderRadius.circular(10)
                    ),
                   
                    child: MaterialButton(
                             
                      onPressed: (){
                           Navigator.push(
                          context,
                          PageTransition(
                            child: const Inscription(),
                            type: PageTransitionType.rightToLeft,
                            //  childCurrent: widget,
                            duration: const Duration(milliseconds: 500),
                          ),
                        );
                          

                      },
                       child: const Text("Inscription",
                       style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Protest_Riot'),
                       )
                       ),
                  ),

                ],
              ))
        ],
      ),
    );
  }
}
