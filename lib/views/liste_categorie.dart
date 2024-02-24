import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/components/card_categorie.dart';
import 'package:mamyssrestaurant/design/Design.dart';

class ListeCategotie extends StatelessWidget {
  const ListeCategotie({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text('Category',style: TextStyle(fontWeight: FontWeight.bold,color: Design.colorPrincipal),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CardCategories(img: "assets/images/rvBoison.png", title: 'Meat',context: context),
              CardCategories(img: "assets/images/assiete.png", title: 'Vegetable',context: context),

            ],),
            SizedBox(height: 10,),
            // deuxieme lite 
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CardCategories(img: "assets/images/burger.png", title: 'Fish',context: context),
              CardCategories(img: "assets/images/rvBoison.png", title: 'Meat',context: context),

            ],),
            SizedBox(height: 10,),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CardCategories(img: "assets/images/rvBoison.png", title: 'Meat',context: context),
              CardCategories(img: "assets/images/rvBoison.png", title: 'Meat',context: context),

            ],),
            SizedBox(height: 10,),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CardCategories(img: "assets/images/rvBoison.png", title: 'Meat',context: context),
              CardCategories(img: "assets/images/rvBoison.png", title: 'Meat',context: context),

            ],),
            SizedBox(height: 10,),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CardCategories(img: "assets/images/rvBoison.png", title: 'Meat',context: context),
              CardCategories(img: "assets/images/pago.png", title: 'Meat',context: context),

            ],),

          ],
        ),
      ),
    );
  }
}