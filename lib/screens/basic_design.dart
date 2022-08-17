

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final String texto = 'Los gatos domésticos son cazadores natos, capaces de acechar a sus presas y abalanzarse sobre ellas con sus garras y dientes. Son particularmente eficaces de noche, cuando sus ojos reflectantes les dotan de una visión mucho más nítida que la de sus víctimas.'; 
    return Scaffold(
      body: Column(
        children: [
          // imagen
           const Image(image: AssetImage('assets/gatos.jpg')),

            // Titulo
           const Title(),

          //  Button Section
          const ButtonSection(),

          // Descripcion
          Container(
            margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 20, ),
            child: Text(texto, textAlign: TextAlign.justify, style: const TextStyle(fontSize: 20) )
          ),
          
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 50, ),
            child: const Text('Lisandris!', 
              textAlign: TextAlign.end, 
              style: TextStyle(fontSize: 18, 
              fontStyle: FontStyle.italic, 
              color: Colors.pinkAccent) 
            )
          ),
              
        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 30 ),
      child: Row(
        
        children: [
         
         Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text( 'Mamífero de la familia de félinos', style: TextStyle( fontStyle: FontStyle.normal, fontSize: 18, ),),
              Text( 'Tener un gato reduce el estrés.', style: TextStyle( fontStyle: FontStyle.italic, color: Color.fromARGB(255, 240, 149, 179) )),
            ],
          ),

          Expanded(child: Container()),

          const Icon(Icons.pets_outlined, color: Colors.pinkAccent, size: 30,),
          const Text ('11'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 50, vertical: 15 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton( icon: Icons.phonelink_ring, text: 'Call' ),
          CustomButton( icon: Icons.room_outlined, text: 'Route' ),
          CustomButton( icon: Icons.share_outlined, text: 'Share' ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;
  

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icon, color: Colors.pinkAccent, size: 30, ),
        Text( text, style: const TextStyle( color: Colors.pinkAccent))
      ],
    );
  }
}