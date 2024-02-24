import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/components/menu_bottom.dart';
import 'package:mamyssrestaurant/components/panier_card.dart';
import 'package:mamyssrestaurant/design/Design.dart';
import 'package:page_transition/page_transition.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.navigate_before,
                color: Design.colorPrincipal,
                size: 35,
              )),
          title: Text(
            "My cart",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Design.colorPrincipal),
          ),
        ),
        body: Column(
          children: [
            CardPanier(
                img: 'assets/images/burger.png',
                title: 'Burger',
                subtitle: 'Vegetable',
                quantity: 20),
            const SizedBox(
              height: 10,
            ),
            CardPanier(
                img: 'assets/images/diner.png',
                title: 'Burger',
                subtitle: 'Meat',
                quantity: 50),
            const SizedBox(
              height: 10,
            ),
            CardPanier(
                img: 'assets/images/assiete.png',
                title: 'Burger',
                subtitle: 'Fish',
                quantity: 2),
            const SizedBox(
              height: 10,
            ),

            CardPanier(
                img: 'assets/images/assiete.png',
                title: 'Burger',
                subtitle: 'Fish',
                quantity: 2),

            const SizedBox(
              height: 10,
            ),
            CardPanier(
                img: 'assets/images/assiete.png',
                title: 'Burger',
                subtitle: 'Fish',
                quantity: 2),

            const Divider(
              indent: 10,
              endIndent: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "SubTotal",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "18 00 Fcfa",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ),
              ],
            ),
            // deuxieme ligne

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tax(5%)",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "-1.25  Fcfa",
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ),
              ],
            ),
            // prix total
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Total",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("18 00 Fcfa",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ],
            ),
            // btn
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                      "Checkout",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Protest_Riot'),
                    )),
              ),
            ),

            Expanded(child: CustomBottomNavigationBar())
          ],
        ));
  }
}
