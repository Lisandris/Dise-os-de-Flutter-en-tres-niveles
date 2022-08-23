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

    final textStyle = TextStyle( fontSize: 40, fontWeight: FontWeight.w400, color: Colors.white );
    
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox( height: 30 ),
          Text('11°', style: textStyle),
          Text('Miercoles', style: textStyle,),
          Expanded(child: Container()),
     
          Icon( Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
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