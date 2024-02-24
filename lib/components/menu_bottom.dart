import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/views/home.dart';
import 'package:mamyssrestaurant/views/panier.dart';
import 'package:mamyssrestaurant/views/profil.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:management_hotel_motel/designe/designe_front_office.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _showDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
            
              content: TextFormField(
                decoration: InputDecoration(
                
                  suffixIcon: const Icon(Icons.search),
                  
                  hintText: 'Recherche',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            );
          });
    }

    return BottomNavigationBar(
      
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF197941),
      items: [
         BottomNavigationBarItem(
          icon: InkWell(
            onTap: (){
               Navigator.push(
        context,
        PageTransition(
          child: const Home(),
          type: PageTransitionType.rightToLeft,
          //  childCurrent: widget,
          duration: const Duration(milliseconds: 500),
        ),
      );
            },
            child: const Icon(Icons.home)),
          label: "",
        ),
       
         const BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "",
        ),
         const BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: "",
        ),
            BottomNavigationBarItem(
          icon: InkWell(
            onTap: (){
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
            child: const Icon(Icons.shopping_basket_rounded)),
          label: "",
        ),
          BottomNavigationBarItem(
          icon: InkWell(
            onTap: (){
               Navigator.push(
        context,
        PageTransition(
          child: const Profile(),
          type: PageTransitionType.rightToLeft,
          //  childCurrent: widget,
          duration: const Duration(milliseconds: 500),
        ),
      );
            },
            child: Icon(Icons.person)),
          label: "",
        ),
      ],
    );
  }
}
