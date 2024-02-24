import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mamyssrestaurant/design/Design.dart';

CardPanier(
    {required String img,
    required String title,
    required String subtitle,
    required double quantity}) {
  return Center(
    child: Slidable(
      startActionPane: ActionPane(
        motion: StretchMotion(),
        children: [
          SlidableAction(
            flex: 2,
            backgroundColor: Design.colorPrincipal,
            onPressed: ((context) {
              print("appel");
            }),
            icon: Icons.phone,
            label: 'Call',
          ),
          // deuxieme action 
             SlidableAction(
            flex: 2,
            backgroundColor: Colors.blue,
            onPressed: ((context) {
              print("Whatsapp");
            }),
            icon: Icons.chat,
            label: 'Whatsapp ',
          ),

        
        ],
        
        
      ),
      endActionPane: ActionPane(motion: StretchMotion(), children: [
           SlidableAction(
            flex: 2,
            backgroundColor: Colors.red,
            onPressed: ((context) {
              print("delete");
            }),
            icon: Icons.delete,
            label: 'Delete',
          ),
      ]),
      child: Container(
        color: Design.backgroundAppcolor,
        child: ListTile(
          title: Text(title,style: TextStyle(fontFamily: 'Protest_Riot'),),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 12, color: Colors.grey[500]),
          ),
          leading: Image.asset(
            img,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          trailing: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 120,
            height: 70,
            // color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  // padding: EdgeInsets.all( 5),
                  decoration: BoxDecoration(
                      color: Design.colorPrincipal,
                      // border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {
                        print("enleve");
                      },
                      icon: const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.remove,
                            size: 9,
                            weight: 20,
                            color: Colors.white,
                          ))),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 50,
                  // color: Colors.black,
                  child: Text(
                    '$quantity'.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Design.colorPrincipal,
                      // border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {
                        print("augmente");
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 9,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
