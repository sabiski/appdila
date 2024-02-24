import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mamyssrestaurant/design/Design.dart';
import 'package:mamyssrestaurant/views/datail_card.dart';
import 'package:page_transition/page_transition.dart';

CardPrincipal({
  required String img,
  required IconData favoris,
  required String title,
  required String categorie,
  required double price,
  required final context,
}) {
  return InkWell(
    onTap: () {
      print("card");
      Navigator.push(
        context,
        PageTransition(
          child: const CardDetail(),
          type: PageTransitionType.rightToLeft,
          //  childCurrent: widget,
          duration: const Duration(milliseconds: 500),
        ),
      );
    },
    child: Slidable(
      endActionPane: ActionPane(
        motion: StretchMotion(), children: [
        SlidableAction(
            backgroundColor: Colors.red,

          onPressed: ((context) {
          print("Delete favoris");
        }),
        icon: Icons.delete,
        label: 'Delete',

        ),
        
      ]),
      child: Card(
        elevation: 10,
        child: Container(
          width: 150,
          height: 152,
          // color: Colors.blue,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Design.backgroundAppcolor),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 70,
                      width: 320,
                      // color: Colors.amber,
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                      left: 0,
                      top: -7,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            favoris,
                            color: Colors.red,
                          )))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Protest_Riot'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    categorie,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(.6), fontSize: 16),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "$price".toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      print("ok");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Design.colorPrincipal,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
