import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/components/card_produit.dart';
import 'package:mamyssrestaurant/components/menu_bottom.dart';


class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
      final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil",
        style: TextStyle(fontSize: 20,color: const Color(0xFF197941),fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const BackButton(
          color: Color(0xFF197941),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.dehaze,color: Color(0xFF197941),))
        ],
      ),
      body: Column(
        children: [
          // ici il doit avoir le carousel
          Container(
            height: 200,
            color: Colors.amber,
          ),
         Container(
          height: myheight*.50,
          color: Colors.grey,
          child: ListView(
            children: [
               Container(
            height: 250,
            // color: Colors.orange,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text("Boisons",
                  style: TextStyle(fontSize: 28,color: const Color(0xFF197941),fontWeight: FontWeight.bold),
                  ),
                ),
                CardProduct(img: 'assets/images/diner.png', title: 'Coca-Cola', price: '500', description: 'lorem ipsum deta fffffffffffffff,rrje suis une simple descriptionrrrrrrrrrrr')
              ],
            ),
          ),
          const SizedBox(height: 20,),
      
          // premier bloc des categories
          Container(
            height: 250,
            // color: Colors.blue,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child:Text("Dessert",
                  style: TextStyle(fontSize: 28,color: Color(0xFF197941),fontWeight: FontWeight.bold),
                  ),
                ),
                 CardProduct(img: 'assets/images/boison.jpg', title: 'autre', price: '1500', description: 'lorem ipsum deta fffffffffffffff,rrje suis une simple descriptionrrrrrrrrrrr')
              ],
            ),
          ),
            const SizedBox(height: 20,),
      
            // deuxieme blog
             Container(
            height: 200,
            color: Colors.green,
          ),
      const SizedBox(height: 15,),
      // troisieme bloc
       Container(
          height: 200,
          color: Colors.purple,
        ),
            ],
      
          ),
         
         ),
          Expanded(child: CustomBottomNavigationBar())
        ],
      ),
      
    );
  }
}