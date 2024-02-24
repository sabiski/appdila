import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/design/Design.dart';
import 'package:mamyssrestaurant/views/categorie.dart';
import 'package:page_transition/page_transition.dart';

CardCategories({
  required String img,
  required String title,
  required final context
}) {
  return InkWell(
    onTap: () {
           Navigator.push(
                          context,
                          PageTransition(
                            child: const CategorieDetail(),
                            type: PageTransitionType.rightToLeft,
                            //  childCurrent: widget,
                            duration: const Duration(milliseconds: 500),
                          ),
                        );
    },
    child: Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Design.backgroundAppcolor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: 'Protest_Riot'),
          )
        ],
      ),
    ),
  );
}
