import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestingFlutter extends StatefulWidget {

  @override
  _TestingFlutterState createState() => _TestingFlutterState();
}

class _TestingFlutterState extends State<TestingFlutter> with SingleTickerProviderStateMixin {
  late Animation<double> controllerAnimation;
  late  AnimationController controller;

    initState() {
      super.initState();
      controller = AnimationController(
          duration: const Duration(milliseconds: 1000), vsync: this);
      final CurvedAnimation curve =
          CurvedAnimation(parent: controller, curve: Curves.easeIn);
      controllerAnimation = Tween(begin: 0.0, end: 1.0).animate(curve);
      controller.forward();
    }

  bool loading = true;

    Widget build(BuildContext context) {
      return Scaffold(
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: loading ? Container(
            key: UniqueKey(),
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: SizedBox(
                width: 24,
                height: 24,
                child: GestureDetector(
                  onTap: _toggle,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ) : Container(
            key: UniqueKey(),
            child: Center(
              child: GestureDetector(
                onTap: _toggle,
                child: Text("WELCOME"),
              ),
            ),
          ),
        ),
      );
    }

  _toggle() {
    setState(() {
      loading = !loading;
    });
  }
}
