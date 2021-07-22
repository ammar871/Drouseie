import 'package:douroosi/constans/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componts/body_login.dart';


class LoginScreen extends StatefulWidget {


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: KHomeColor,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        
        child: BodyLogin(),),
      ),
    );
  }
}

