import 'package:animatersplashscreen_design/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Lottie.asset('assets/splash_animation.json'),
          ),
          const SizedBox(height: 20),
          TweenAnimationBuilder(

            tween: Tween(begin: 0.0,end: 1.0),
            duration: Duration(seconds: 10),
            builder:  (context,value, _)=>SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor: Colors.white,
                value: 0.5,
              ),
            ),
          )
        ],
      )
    );
  }
}
