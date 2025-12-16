
import 'package:flutter/material.dart';


class HeroScreen2 extends StatefulWidget {
  const HeroScreen2({super.key});

  @override
  State<HeroScreen2> createState() => _HeroScreen2State();
}

class _HeroScreen2State extends State<HeroScreen2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Hero(
          tag: 'background',
          child: Image(image: AssetImage("assets/images/sun.one.jpg"))),
    );
  }
}
