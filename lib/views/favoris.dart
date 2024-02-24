import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/components/card_categorie.dart';
import 'package:mamyssrestaurant/components/card_principal.dart';
import 'package:mamyssrestaurant/components/panier_card.dart';
import 'package:mamyssrestaurant/design/Design.dart';

class Favoris extends StatelessWidget {
  const Favoris({super.key});

  @override
  Widget build(BuildContext context) {
     final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
           Icons.navigate_before,
                color: Design.colorPrincipal,
                size: 35,
        )),
       
        centerTitle: false,
        title: Text('Favoris',style: TextStyle(fontWeight: FontWeight.bold,color: Design.colorPrincipal),),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            // btn sear
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
            // fin btn serch
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardPrincipal(img: 'assets/images/assiete.png', favoris: Icons.favorite, title: 'salade', categorie: 'vegetable', price: 1500, context: context),
                CardPrincipal(img: 'assets/images/burger.png', favoris: Icons.favorite, title: 'Burger', categorie: 'vegetable', price: 3500, context: context),

              
              ],
            )
          ],
        )
      ),
    );
  }
}