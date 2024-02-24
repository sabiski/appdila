import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/app/app.dart';
import 'package:mamyssrestaurant/components/card_principal.dart';
import 'package:mamyssrestaurant/components/menu_bottom.dart';
import 'package:mamyssrestaurant/design/Design.dart';
import 'package:mamyssrestaurant/views/categorie.dart';
import 'package:mamyssrestaurant/views/datail_card.dart';
import 'package:mamyssrestaurant/views/favoris.dart';
import 'package:mamyssrestaurant/views/liste_categorie.dart';
import 'package:mamyssrestaurant/views/panier.dart';
import 'package:mamyssrestaurant/views/profil.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Design.colorPrincipal,
        ),
        drawer: Drawer(
          backgroundColor: Design.colorPrincipal,
          child: ListView(
            children: [
               DrawerHeader(
                  child: Center(
                child: Image.asset("assets/images/GUILAMBU-removebg-preview.png",color: Design.blanc,)
              )),
              ListTile(
                title: const Text(
                  'Home',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: 'Protest_Riot',
                      color: Colors.white),
                ),
                leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Favoris',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: 'Protest_Riot',
                      color: Colors.white),
                ),
                leading: IconButton(
                    onPressed: () {
                         Navigator.push(
                        context,
                        PageTransition(
                          child: const Favoris(),
                          type: PageTransitionType.rightToLeft,
                          //  childCurrent: widget,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Category',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: 'Protest_Riot',
                      color: Colors.white),
                ),
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const ListeCategotie(),
                          type: PageTransitionType.rightToLeft,
                          //  childCurrent: widget,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.menu_book,
                      size: 40,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Panier',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: 'Protest_Riot',
                      color: Colors.white),
                ),
                leading: IconButton(
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
                    icon: const Icon(
                      Icons.shopping_basket,
                      size: 40,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Profil',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: 'Protest_Riot',
                      color: Colors.white),
                ),
                leading: IconButton(
                    onPressed: () {
                       Navigator.push(
        context,
        PageTransition(
          child: const Profile(),
          type: PageTransitionType.rightToLeft,
          //  childCurrent: widget,
          duration: const Duration(milliseconds: 500),
        ),
      );
                    },
                    icon: const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 150,
              ),
              SizedBox(
                height: 100,
                child: ListTile(
                  title: const Text(
                    "Deconnexion",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Protest_Riot'),
                  ),
                  trailing: InkWell(
                      onTap: () {
                        print("deconnexion");
                           Navigator.push(
                        context,
                        PageTransition(
                          child: const App(),
                          type: PageTransitionType.rightToLeft,
                          //  childCurrent: widget,
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                      },
                      child: const Icon(
                        Icons.login_outlined,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Design.blanc,
        extendBody: true,
        body: Column(children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 10, right: 10),
                child: Container(
                  height: myheight * .07,
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.navigate_before,
                            color: Design.colorPrincipal,
                            size: 35,
                          )),
                      Container(
                        width: mywidth / 2,
                        height: myheight,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              width: mywidth / 5.5,
                              height: myheight / 6.2,
                              // decoration: BoxDecoration(
                              //   color: Colors.white,
                              //   border: Border.all(width: 2,color: Colors.white,
                              //   ),
                              //   borderRadius: BorderRadius.circular(60)
                              // ),
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/myprofil.jpeg",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Sabi junior",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Protest_Riot',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: myheight,
                          width: mywidth / 4,
                          // color: const Color.fromARGB(255, 243, 33, 33),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // ignore: prefer_const_constructors
                              Container(
                                  child: Stack(children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.notifications,
                                        size: 35, color: Colors.black)),
                                Positioned(
                                  right: 11,
                                  top: 9,
                                  child: Container(
                                    width: 11,
                                    height: 11,
                                    decoration: BoxDecoration(
                                        color: Design.colorPrincipal,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  ),
                                ),
                              ])),
                              // IconButton(
                              //     onPressed: () {
                              //        Container(

                              //       );
                              //     },
                              //     icon: const Icon(
                              //       Icons.menu,
                              //       color: Colors.black,
                              //     ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25),
            child: Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                width: mywidth,
                height: myheight * .06,
                // color: Colors.amber,
                decoration: BoxDecoration(
                    color: Design.backgroundAppcolor,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Design.colorPrincipal),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 28,
                            color: Design.colorPrincipal,
                          )),
                      border: InputBorder.none),
                )),
          ),
          // partie categorie
          const SizedBox(
            height: 10,
          ),
          Container(
            width: mywidth,
            height: myheight * .18,
            // color: Colors.amber,
            child: Column(
              children: [
                // ligne des title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,
                          fontFamily: 'Protest_Riot',
                          // color:  Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: const ListeCategotie(),
                                type: PageTransitionType.rightToLeft,
                                //  childCurrent: widget,
                                duration: const Duration(milliseconds: 500),
                              ),
                            );
                          },
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // color: Colors.white
                            ),
                          )),
                    )
                  ],
                ),
                // image des categoie et des titlt
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          height: myheight * .08,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Design.backgroundAppcolor,
                          ),
                          child: Image.asset(
                            "assets/images/burger.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Meat",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    // image et title de la deuxieme categorie
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          height: myheight * .08,
                          decoration: BoxDecoration(
                              color: Design.backgroundAppcolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "assets/images/assiete.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Vegetable",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    // image et title de la troisieme categorie
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          width: 100,
                          height: myheight * .08,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                              color: Design.backgroundAppcolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "assets/images/fraise.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Fish",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),

          // fin categorie
          const SizedBox(
            height: 8,
          ),
          Container(
            width: mywidth,
            height: myheight * .19,
            // color: Colors.amber,
            child: Column(
              children: [
                // title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "Todays's offers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,
                          fontFamily: 'Protest_Riot',
                          // color: Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    )
                  ],
                ),
                // card
                Card(
                  elevation: 10,
                  child: Container(
                    width: mywidth / 1.5,
                    height: myheight * .11,
                    decoration: BoxDecoration(
                        color: Design.colorPrincipal,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          width: mywidth / 2.9,
                          height: myheight,
                          // color: Colors.amber,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "50%",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.0),
                                child: Text(
                                  "Limited offer Time",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Protest_Riot',
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                                padding: const EdgeInsets.all(0),
                                // color: Colors.red,
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  "assets/images/assiete.png",
                                  fit: BoxFit.fitWidth,
                                )))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          // recommendation
          Expanded(
            child: Container(
              width: mywidth,
              height: myheight * .32,
              decoration: BoxDecoration(
                  // color: Colors.amber,

                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recommended For You",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,
                          fontFamily: 'Protest_Riot',
                          // color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        // color:Design.colorPrincipal,

                        decoration: BoxDecoration(
                            color: Design.colorPrincipal,
                            borderRadius: BorderRadius.circular(5)),
                        child: MaterialButton(
                            elevation: 5,
                            autofocus: true,
                            onPressed: () {},
                            child: const Text(
                              "All",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      // deuxieme btn
                      Container(
                        width: 100,
                        height: 30,
                        // color:Design.colorPrincipal,

                        decoration: BoxDecoration(
                            color: Design.backgroundAppcolor,
                            borderRadius: BorderRadius.circular(5)),
                        child: MaterialButton(
                            elevation: 2,
                            autofocus: true,
                            onPressed: () {},
                            child: const Text(
                              "Vegetable",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      // troisieme btn
                      Container(
                        width: 100,
                        height: 30,
                        // color:Design.colorPrincipal,

                        decoration: BoxDecoration(
                            color: Design.backgroundAppcolor,
                            borderRadius: BorderRadius.circular(5)),
                        child: MaterialButton(
                            elevation: 2,
                            autofocus: true,
                            onPressed: () {},
                            child: const Text(
                              "Meat",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  // les deu

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardPrincipal(
                          img: 'assets/images/burger.png',
                          favoris: Icons.favorite,
                          title: 'Burger',
                          categorie: 'Vegetable',
                          price: 18000,
                          context: context),
                      CardPrincipal(
                          img: 'assets/images/assiete.png',
                          favoris: Icons.favorite,
                          title: 'Burger',
                          categorie: 'Vegetable',
                          price: 18000,
                          context: context),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Expanded(child: CustomBottomNavigationBar())
        ]));
  }
}
