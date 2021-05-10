import 'package:flutter/material.dart';

class Liked extends StatelessWidget {
  final bool isSelected;
  final Function onPressed;
  Liked({this.isSelected, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: IconButton(
        iconSize: 40.0,
        padding: EdgeInsets.all(5),
        icon: Padding(
            padding: EdgeInsets.zero,
            child: isSelected == false ? Icon(Icons.favorite, color: Colors.brown)
                : Icon(Icons.favorite, color: Colors.red)
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}