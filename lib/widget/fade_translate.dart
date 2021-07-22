import 'package:flutter/cupertino.dart';

class ExpandedSection extends StatefulWidget {

 late  Widget child;
 late final bool expand;
  ExpandedSection(this.expand , this.child);

  @override
  _ExpandedSectionState createState() => _ExpandedSectionState();
}
class _ExpandedSectionState extends State<ExpandedSection> with SingleTickerProviderStateMixin {
 late AnimationController expandController;
 late Animation<double> animation; 

  @override
  void initState() {
    super.initState();
    prepareAnimations();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200)
    );
   late Animation curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(curve as dynamic)
      ..addListener(() {
        setState(() {

        });
      }
    );
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.expand) {
      expandController.forward();
    }
    else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 0,
      sizeFactor: animation,
      child: widget.child
    );
  }
}