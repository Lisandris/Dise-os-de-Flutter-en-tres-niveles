// ignore_for_file: unnecessary_this

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children:[
            _SingleCard( color: Color.fromARGB(255, 248, 209, 35), icon: Icons.airplanemode_active_outlined, text: 'Fly'),
            _SingleCard( color:  Color.fromRGBO(236, 98, 188, 1), icon: Icons.pets, text: 'Cats'),
          ]
        ),
        TableRow(
          children:[
              _SingleCard( color: Color.fromARGB(255, 35, 152, 248), icon: Icons.palette_rounded, text: 'Drawn'),
            _SingleCard( color:  Color.fromRGBO(236, 98, 188, 1), icon: Icons.face_outlined, text: 'Face'),
          ]
        ),
        TableRow(
          children:[
            _SingleCard( color: Colors.lightGreenAccent, icon: Icons.electric_bike_outlined, text: 'Bike'),
            _SingleCard( color:  Color.fromARGB(255, 20, 114, 121), icon: Icons.cake_sharp, text: 'Cake'),
          ]
        ),
        TableRow(
          children:[
            _SingleCard( color: Color.fromARGB(255, 35, 248, 124), icon: Icons.apple, text: 'Apple'),
            _SingleCard( color:  Color.fromARGB(255, 187, 39, 39), icon: Icons.emoji_nature_rounded, text: 'Nature'),
          ]
        ),
        TableRow(
          children:[
            _SingleCard( color: Color.fromARGB(255, 124, 187, 238), icon: Icons.music_note_sharp, text: 'Music'),
            _SingleCard( color:  Color.fromARGB(250, 156, 54, 131), icon: Icons.nightlight_round_sharp , text: 'Moon'),
          ]
        ),
        TableRow(
          children:[
            _SingleCard( color: Color.fromARGB(255, 88, 68, 163), icon: Icons.android_rounded, text: 'Android'),
            _SingleCard( color:  Color.fromARGB(249, 221, 118, 126), icon: Icons.ramen_dining, text: 'Food'),
          ]
        ),
      ] 
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
      Key? key,
      required this.icon, 
      required this.color, 
      required this.text
     }): super(key: key);
    

  @override
  Widget build(BuildContext context) {

      return _CardBackground(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon( icon, size: 35, color: Colors.white),
            radius: 30,
          ),
          const SizedBox( height: 10),
          Text(text, style: TextStyle (color: this.color, fontSize: 18))
        ],
      )
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5 ),
          child: Container(
            height: 180,
           decoration: BoxDecoration( 
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child, 
          ),
        ),
      ),
    );
  }
}