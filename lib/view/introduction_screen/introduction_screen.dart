import 'package:flutter/material.dart';
import 'package:images/view/login.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
 getpages(){
  return [
    PageViewModel(
      decoration: PageDecoration(imageFlex: 2),
      image: Image.asset('images/intro_screen1.png'),
      titleWidget: Text('Time Unleashed - Your Ultimate Watch Destination"' , style: TextStyle(fontWeight: FontWeight.bold ),
      
    ),
    body: "Welcome to Time Unleashed, where every second counts and style is timeless! Immerse yourself in the world of horological elegance with our Watches Hub E-commerce App. Discover a curated collection of exquisite timepieces that transcend mere functionality, blending artistry, precision, and unparalleled craftsmanship."


   
    ),
    PageViewModel(
      decoration: PageDecoration(imageFlex: 2),
      image: Image.asset('images/intro_screen2.png'),
      titleWidget: Text('Era Elegance - Dive into Timeless Watches' , style: TextStyle(fontWeight: FontWeight.bold ),
      
    ),
    body: "Discover a collection that goes beyond the ordinary. At Era Elegance, we believe in personal expression. \n  Find watches that resonate with your individuality, allowing you to wear time in a way that reflects your unique style and personality."


   
    ),
    PageViewModel(
      decoration: PageDecoration(imageFlex: 2),
      image: Image.asset('images/intro_screen3.png'),
      titleWidget: Text('TimeCrafters - Navigate the Watch Universe' , style: TextStyle(fontWeight: FontWeight.bold ),
      
    ),
    body: "Connect with a community of watch connoisseurs and enthusiasts on TimeCrafters. Share your passion, insights, and \n discoveries in a space where horology enthusiasts come together to celebrate the art and science of timekeeping"


   
    )
  ];
 }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true, 
        skip: Text('Skip', style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
      next: Icon(Icons.arrow_forward_rounded , color: Colors.black,), 
      done: Text("Get Started" , style: TextStyle(color: Colors.black , fontWeight:FontWeight.bold ),
      ),
      dotsDecorator: DotsDecorator(color: Colors.grey, activeColor: Colors.black),
      onDone: (){
     Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
      },
      onSkip: (){
     Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));

      },
      pages: getpages(),
      ),
      
    );
  }
}