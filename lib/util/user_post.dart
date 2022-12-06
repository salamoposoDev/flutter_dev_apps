import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  UserPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // PROFILES PHOTO
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(width: 10),

                  // name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // menu icon
              Icon(Icons.menu),
            ],
          ),
        ),

        //POST
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        SizedBox(height: 10),
        // BUTTONS AND COMAND
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Icon(Icons.favorite_border_outlined),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.chat_bubble_outline_outlined),
                  ),
                  Icon(Icons.share_outlined),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.bookmark_outline_outlined),
            ),
          ],
        ),
        SizedBox(height: 10),

        // LIKE
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Text('183.474 suka'),
            ],
          ),
        ),

        // CAPTIONS
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: ' Jangan pernah menyerah selama kita masih bisa')
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
