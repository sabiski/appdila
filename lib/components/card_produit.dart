import 'package:flutter/material.dart';

CardProduct({
  required String img,
  required String title,
  required String price,
  required String description,
}) {
  return Container(
    padding: EdgeInsets.all(10),
    width: 300,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 80,
              child: Image.asset(img,
              fit: BoxFit.cover,
              ),
            ),
            Text(title,
            style: TextStyle(color: Color(0xFF197941),fontSize: 20,fontWeight: FontWeight.bold),
            )
          ],
        ),
        // le prix
         Align(
          alignment: Alignment.topLeft,
          child:   Text('Prix : $price',
          style: TextStyle(fontSize: 18,color: Color(0xFF197941)),
          ),
        ),
        SizedBox(height: 10,),

        Align(
          alignment: Alignment.center,
          child: Text(
          
            description,
            overflow: TextOverflow.visible,
            maxLines: 1,
          style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
          ),
        ),
          SizedBox(height: 5,),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF197941),
                    shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5)
                       )
                ),
                onPressed: (){}, child: Text("Ajouter au panier",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
              TextButton(onPressed: (){}, child: Text("Voir plus"))
            ],
          ),
        )
      ],
    ),
  );
}
