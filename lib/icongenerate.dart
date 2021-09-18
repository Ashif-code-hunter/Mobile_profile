import 'package:flutter/material.dart';

class IconGenerate extends StatelessWidget {
  final String image;
  final double radi;
  final double size;
  IconGenerate({this.image="images/arrow.png",this.radi=80,this.size=50});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(radi),
      ),
    );
  }
}
