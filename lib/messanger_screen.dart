import 'package:flutter/material.dart';
import 'package:massenger_screen/storyitem.dart';

import 'item.dart';

class Messanger_Screen extends StatelessWidget {
  const Messanger_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            ),
            SizedBox(width: 13),
            Text("Chats"),
          ],
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.blue),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.blue),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300]),
              child: TextFormField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ))),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 70,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => StoryItem(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemCount: 10,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => Item(),
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: 10,
              ),
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }
}