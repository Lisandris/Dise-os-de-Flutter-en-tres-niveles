import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      backgroundColor:  Color.fromRGBO(236, 98, 188, 1),
      unselectedItemColor:  Colors.white38,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon( Icons.calendar_month),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.pets ),
          label: 'Pets'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.supervisor_account_outlined),
          label: 'Usuarios'
        )
      ],
      
    );
  }
}