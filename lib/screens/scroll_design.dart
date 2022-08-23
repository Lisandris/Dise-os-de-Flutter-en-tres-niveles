import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Background(),

          // Main Content - Column
          MainContent()

        ],
      )
   );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text('Hola Lis'),
        Text('Hola Lis'),
        Text('Hola Lis'),
        Text('Hola Lis'),
      ],

    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'), )
      );
  }
}