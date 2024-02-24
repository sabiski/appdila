import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/app/app.dart';
import 'package:mamyssrestaurant/components/menu_bottom.dart';
import 'package:mamyssrestaurant/design/Design.dart';
import 'package:mamyssrestaurant/views/panier.dart';
import 'package:page_transition/page_transition.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil",
          style: TextStyle(color: Design.colorPrincipal),
        ),
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.navigate_before,
              size: 30,
              color: Design.colorPrincipal,
            )),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: CircleAvatar(
              // foregroundColor: Design.colorPrincipal,
              // child: Image.asset("assets/images/myprofil.jpeg"),
              radius: 80,
              // backgroundColor: Design.colorPrincipal,
              backgroundImage: AssetImage(
                "assets/images/myprofil.jpeg",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Sabi junior",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Protest_Riot')),
          const Text("Tel: 077 83 65 51",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Design.colorPrincipal,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                  top: 40,
                  left: 15,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Balance",
                        style: TextStyle(
                            color: Design.blanc, fontWeight: FontWeight.bold),
                      )),
                ),
                Positioned(
                  top: 65,
                  left: 25,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "00000",
                      style: TextStyle(color: Design.blanc),
                    ),
                  ),
                )
              ]),
              // fin du premier bloc
              // 2 bloc
              Stack(children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Design.colorPrincipal,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                  top: 40,
                  left: 25,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Order",
                        style: TextStyle(
                            color: Design.blanc, fontWeight: FontWeight.bold),
                      )),
                ),
                Positioned(
                  top: 65,
                  left: 25,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "12",
                      style: TextStyle(color: Design.blanc),
                    ),
                  ),
                )
              ]),
              // 3 bloc
              Stack(children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Design.colorPrincipal,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                  top: 40,
                  left: 15,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Total spent",
                        style: TextStyle(
                            color: Design.blanc, fontWeight: FontWeight.bold),
                      )),
                ),
                Positioned(
                  top: 65,
                  left: 25,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "10",
                      style: TextStyle(color: Design.blanc),
                    ),
                  ),
                )
              ]),
            ],
          ),
          // champ
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
            child: ListTile(
              onTap: () {
                print("okey info personal");
                showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                       
                        title: const Text("Personal information"),
                        content: Container(
                          height: myheight * .4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const TextField(
                                decoration: InputDecoration(
                                  hintText: 'sabi junior',
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                  hintText: '077 83 65 51',
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                               const TextField(
                                obscureText:true ,
                                decoration: InputDecoration(
                                  
                                  hintText: '',
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Design.colorPrincipal),
                                    child: MaterialButton(
                                        child: Text("Cancel",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    Design.backgroundAppcolor)),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        }),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue),
                                    child: MaterialButton(
                                        child: Text(
                                          "Confirm",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Design.backgroundAppcolor),
                                        ),
                                        onPressed: () {
                                          print("update");
                                        }),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              leading: Icon(
                Icons.person,
                color: Design.colorPrincipal,
              ),
              title: const Text("Personal information"),
            ),
          ),
          // 2  bloc info SizedBox(height: 20,),
          const SizedBox(
            height: 25,
          ),

          const Divider(
            indent: 10,
            endIndent: 10,
          ),

          SizedBox(
            height: 20,
            child: ListTile(
              onTap: () {
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
              leading: Icon(
                Icons.person,
                color: Design.colorPrincipal,
              ),
              title: const Text("Your order"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          const Divider(
            indent: 10,
            endIndent: 10,
          ),

          SizedBox(
            height: 20,
            child: InkWell(
              onTap: (){
                print("okey info personal");
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
              child: ListTile(
                
                leading: Icon(
                  Icons.logout,
                  color: Design.colorPrincipal,
                ),
                title: const Text("Logout"),
              ),
            ),
          ),
          const SizedBox(
            height: 89,
          ),
          CustomBottomNavigationBar()
        ],
      ),
    );
  }
}
