import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:mamyssrestaurant/design/Design.dart';
import 'package:mamyssrestaurant/views/panier.dart';
import 'package:page_transition/page_transition.dart';

class CardDetail extends StatefulWidget {
  const CardDetail({super.key});

  @override
  State<CardDetail> createState() => _CardDetailState();
}

class _CardDetailState extends State<CardDetail> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Positioned(
                  child: Container(
                    width: mywidth,
                    height: myheight * .27,
                    // color: Colors.amber,
                    color: Design.backgroundAppcolor,
                    child: Column(
                      children: [
                        // Image.asset(
                        //   "assets/images/rvBoison.png",
                        //   fit: BoxFit.cover,
                        // )
                        SizedBox(
                          width: mywidth,
                          height: myheight * .27,
                          child: AnotherCarousel(
                            dotSize: 4,
                            dotBgColor: Design.colorPrincipal,
                            indicatorBgPadding: 6,
                            animationCurve: Curves.easeInExpo,
                            images:  [
                            Image.asset("assets/images/assiete.png",fit: BoxFit.cover,),
                            Image.asset("assets/images/burger.png",fit: BoxFit.cover),
                            Image.asset("assets/images/fraise.png",fit: BoxFit.cover),

                          
                            ]),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.navigate_before,
                      color: Design.colorPrincipal,
                      size: 35,
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("FRESH Boison ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Protest_Riot')),
                      Text(
                        "Vegetable",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(.6)),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.star_sharp,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(color: Colors.grey.withOpacity(.7)),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: mywidth,
                height: myheight * .11,
                decoration: BoxDecoration(
                    color: Design.backgroundAppcolor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // first element icone et title
                    Container(
                      width: 80,
                      height: 50,
                      // color: Design.colorPrincipal,
                      child: Column(
                        children: [
                          const Icon(
                            Icons.drive_eta_sharp,
                            color: Colors.orange,
                          ),
                          Text(
                            "2 000 Fcfa",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.withOpacity(.8)),
                          )
                        ],
                      ),
                    ),
                    // deuxieme kilometre
                    Container(
                      width: 80,
                      height: 50,
                      // color: Design.colorPrincipal,
                      child: Column(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Design.colorPrincipal,
                          ),
                          Text("2.5 km ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.withOpacity(.8)))
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 50,
                      // color: Design.colorPrincipal,
                      child: Column(
                        children: [
                          Icon(
                            Icons.warning,
                            color: Design.colorPrincipal,
                          ),
                          Text("No offer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.withOpacity(.8)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Caracteristique du produit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Protest_Riot'),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Text(
                    "  lorem ipsum is simply dummy text of the printing and typeseting simply dummy ipsum lorem ipsum is simply dummy text of the printing and typeseting simply dummy ipsum lorem ipsum is simply dummy text of the printing and typeseting simply dummy ipsum lorem ipsum is simply dummy text of the printing and typeseting simply dummy ipsum...",
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "read more",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // price
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Price \n 18 000 Fcfa",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Protest_Riot'),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            // btn
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: mywidth,
                height: myheight * .07,
                // color: Colors.amber,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Design.colorPrincipal),

                child: MaterialButton(
                    elevation: 20,
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const Panier(),
                          type: PageTransitionType.rightToLeft,
                          //  childCurrent: widget,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                    child: const Text(
                      "Add to Card",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Protest_Riot'),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
