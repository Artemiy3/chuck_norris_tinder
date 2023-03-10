import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final String imageUrl;

  const ImageScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: Image.network(
          imageUrl,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}