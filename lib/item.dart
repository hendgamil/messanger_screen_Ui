import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
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
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hend Gamil Hend Gamil Hend Gamil Hend Gamil H",
              style: TextStyle(fontSize: 13),
            ),
            Row(
              children: [
                Text(
                  "Hend Gamil Hend Gamil Hend Gamil Hend Gamil H",
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "10 Am",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
