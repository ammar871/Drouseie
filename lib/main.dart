import 'package:douroosi/screens/auth/login_screen/login/login_screen.dart';
import 'package:douroosi/screens/auth/login_screen/signUp/sigin_up_screen.dart';
import 'package:douroosi/screens/home/home_screen.dart';
import 'package:douroosi/screens/splash_screen/splash_screen.dart';
import 'package:douroosi/screens/testing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
         '/':(context) => SplashScreen(),
         '/home':(context) => HomePage(),
         '/login':(context) => LoginScreen(),
         '/signUp':(context) => SignUpScreen(),
        //  '/test':(context) => TestingFlutter()

      },
    );
  }
}
