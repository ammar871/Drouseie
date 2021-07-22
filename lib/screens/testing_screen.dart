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

    bool isSelected = false;

    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: Duration(seconds: 10),//it is ignored
            child: isSelected
                ? Container(
                    width: 200.0,
                    height: 200.0,
                    child: FlutterLogo(
                      textColor: Colors.red,
                    ),
                  )
                : Container(
                    width: 200.0,
                    height: 200.0,
                    child: FlutterLogo(
                      textColor: Colors.blue,
                    )),
            transitionBuilder: defaultTransitionBuilder,
          ),
          MaterialButton(
            child: Text("Texting"),
            onPressed: () {
              if (controller.isCompleted) {
                controller.reset();
              }

              controller.forward();

              setState(() {
                isSelected = !isSelected;
              });
            },
          )
        ],
      );
    }

    Widget defaultTransitionBuilder(Widget child, Animation<double> animation) {
      return AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return Opacity(
            opacity: controllerAnimation.value,
            child: ScaleTransition(
              scale: controllerAnimation,
              child: widget,
            ),
          );
        },
        child: child,
      );
    }

    dispose() {
      controller.dispose();
      super.dispose();
    }
  }