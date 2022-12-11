import 'package:flutter/material.dart';

class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FittedBox(
      fit: BoxFit.cover,
      child: Image.asset(imgPath),
    );
  }
}