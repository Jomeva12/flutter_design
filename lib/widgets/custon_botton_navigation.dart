import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatelessWidget {
  const CustomBottonNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //ára quitarle el texto
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor:Color.fromRGBO(116, 117, 152, 1),
      selectedItemColor: Colors.pink,
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: "Calendar"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.android),
            label: "Android"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Star"
        ),
      ],
    );
  }
}
