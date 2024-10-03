import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
          radius: 30,
        ),
        Positioned(
          top: 45,
          left: 45,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
