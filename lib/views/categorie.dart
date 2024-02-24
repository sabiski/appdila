import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/components/card_principal.dart';
import 'package:mamyssrestaurant/design/Design.dart';

class CategorieDetail extends StatefulWidget {
  const CategorieDetail({super.key});

  @override
  State<CategorieDetail> createState() => _CategorieDetailState();
}

class _CategorieDetailState extends State<CategorieDetail> {
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
            )),
        title: Text(
          "Vegetable",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Design.colorPrincipal),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
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
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 28,
                            color: Design.colorPrincipal,
                          )),
                      border: InputBorder.none),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardPrincipal(
                  img: 'assets/images/burger.png',
                  favoris: Icons.favorite,
                  title: 'Burger',
                  categorie: 'Vegetable',
                  price: 1800,
                  context: context),
              CardPrincipal(
                  img: 'assets/images/burger.png',
                  favoris: Icons.favorite,
                  title: 'Burger',
                  categorie: 'Vegetable',
                  price: 18000,
                  context: context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardPrincipal(
                  img: 'assets/images/diner.png',
                  favoris: Icons.favorite,
                  title: 'Burger',
                  categorie: 'Vegetable',
                  price: 1800,
                  context: context),
              CardPrincipal(
                  img: 'assets/images/diner.png',
                  favoris: Icons.favorite,
                  title: 'Burger',
                  categorie: 'Vegetable',
                  price: 1800,
                  context: context),
            ],
          ),
        ],
      )),
    );
  }
}
