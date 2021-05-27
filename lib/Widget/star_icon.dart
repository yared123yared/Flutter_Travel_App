import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  final IconData iconData;

  StarIcon({@required this.iconData});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Icon(
        this.iconData,
        color: Colors.amber,
        size: height/width * 11
    );
  }
}


