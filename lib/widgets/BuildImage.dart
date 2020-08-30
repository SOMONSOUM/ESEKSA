import 'package:flutter/material.dart';

Widget buildImage(String assetName, double imageWidth, double imageHeight) {
  return Align(
    child: Image.asset('assets/images/$assetName.png', width: imageWidth),
    alignment: Alignment.bottomCenter,
  );
}
