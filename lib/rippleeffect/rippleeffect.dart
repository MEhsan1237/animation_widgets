
import 'package:flutter/material.dart';

class RippleEffectScreen extends StatefulWidget {
  const RippleEffectScreen({super.key});

  @override
  State<RippleEffectScreen> createState() => _RippleEffectScreenState();
}

class _RippleEffectScreenState extends State<RippleEffectScreen>  with SingleTickerProviderStateMixin{


  late AnimationController _animationController;
  late Animation _animation;
  var listNames = [100.0,150.0,200.0,250.0,300.0];

  @override
  void initState() {
    _animationController = AnimationController(vsync: this,duration: Duration(
        seconds: 5
    ));
    _animation =  Tween(begin: 0.0,end: 1.0,).animate(_animationController);


    super.initState();

    _animationController.addListener((){
      setState(() {

      });
    });

    _animationController.forward();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Ripple Effect",style: TextStyle(color: Colors.white),)),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: listNames.map((radius)=>Container(

           height: radius*_animation.value,
            width: radius*_animation.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(1.0- _animation.value)
            ),

          )).toList(),
        ),
      ),
    );
  }
}
