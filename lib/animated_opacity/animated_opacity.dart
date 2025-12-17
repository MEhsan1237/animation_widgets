

import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
   double opacityNum = 1.0;
   bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar( backgroundColor: Colors.deepPurple,
        title: Text("Animated Opacity",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
           curve: Curves.bounceInOut,
            opacity: opacityNum,
            duration: Duration(
              seconds: 2
            ),
            child: Container(

              width: 150,
              height: 150,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(14),

                gradient: LinearGradient(colors: [
                  Colors.deepOrangeAccent,
                  Colors.deepPurpleAccent
                ]),
              ),
              child: Center(child: Text("hello",style: TextStyle(color: Colors.white),)),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white
                ),
                onPressed: (){

                  setState(() {

                     if(visibility){
                       opacityNum = 0.0;
                       visibility = false;
                     }
                     else {
                       opacityNum = 1.0;
                       visibility = true;
                     }
                  });
                }, child: Text("Click Here",

            )),
          )
        ],
      ),
    );
  }
}

