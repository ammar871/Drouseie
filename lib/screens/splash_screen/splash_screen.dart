import 'dart:async';

import 'package:douroosi/constans/constans.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
   static String id = "SplashScreen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>   with SingleTickerProviderStateMixin  {


  AnimationController? animationController;
  Animation<double>? animation;



  var _visible = true;
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  dispose() {
    animationController!.dispose();
    super.dispose();
  }

   @override
  void initState() {

    super.initState();

    animationController = new AnimationController(
      vsync: this ,
      duration: new Duration(seconds: 2),
    );

    animation =
        new CurvedAnimation(parent: animationController!, curve: Curves.easeOut);

    animation!.addListener(() => this.setState(() {}));
    animationController!.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }
  @override
  Widget build(BuildContext context) {
       SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: KHomeColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Center(child: Image.asset("images/imgsplash.png",fit:BoxFit.fitWidth ,height: 100,width: double.infinity,),),
        ),
      ),
    );
  }
}