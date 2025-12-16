import 'package:all_widgets/rippleeffect/rippleeffect.dart';
import 'package:all_widgets/screens/heroscreen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'animated_opacity/animated_opacity.dart';
import 'animationcontainer/animationcontainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const RippleEffectScreen(),
    );
  }
}

class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key});

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


            Center(child: Hero(
                tag: 'background',
                child: Image(image: AssetImage("assets/images/sun.one.jpg",),width: 100,height: 100,))),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
            Get.to(HeroScreen2());
            },
            child: Container(
              height: 30,
              width: 120,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.red,
                  Colors.deepPurple
                ])
              ),
              child: Center(
                child: Text("Click Here",textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.white,fontSize: 16
                ),),
              ),
            ),
          )


        ],
      ),

    );
  }
}

 
