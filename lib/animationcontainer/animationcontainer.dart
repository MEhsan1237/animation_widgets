import 'package:flutter/material.dart';

class AnimationContainerScreen extends StatefulWidget {
  const AnimationContainerScreen({super.key});

  @override
  State<AnimationContainerScreen> createState() =>
      _AnimationContainerScreenState();
}

class _AnimationContainerScreenState extends State<AnimationContainerScreen> {
  double width = 200.0;
  double height = 200.0;
  bool isFlag = true;

  Decoration decoration = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Colors.red
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Animation container",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              decoration: decoration ,
              duration: Duration(seconds: 2),
              curve: Curves.bounceInOut,
              width: width,
              height: height,
              child: Center(child: Text("Container")),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white, elevation: 4, shape:  StadiumBorder(), fixedSize: Size(140, 20)
            ),

            onPressed: (){
            setState(() {
              if(isFlag){
                width = 434.0;
                height = 120.0;
                isFlag = false;
                decoration = BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(40)
                );
              }
               else {
                 width = 200.0;
                 height= 200.0;
                 isFlag = true;
                 decoration= BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: Colors.red
                 );
              }
            });
          }, child: Center(child: Text("Click here")),
          )
        ],
      ),
    );
  }
}
