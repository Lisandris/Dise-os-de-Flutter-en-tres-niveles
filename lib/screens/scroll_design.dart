import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xff5EE8C5),
              Colors.white
            ])
    );

  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
          ],
        ),
      ),  /* stack envuelto en un widget */
   );
  }
}

class Page1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Background(),

        // Main Content - Column
        MainContent()

      ],
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
     
          const Icon( Icons.keyboard_arrow_down_rounded , size: 100, color: Colors.white,)
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

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TextButton(
          onPressed: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 30)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const StadiumBorder()
          ),
        )
      ),
    );
  }
}