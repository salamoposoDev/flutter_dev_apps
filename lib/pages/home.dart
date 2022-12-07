import 'package:cloning_instagram/util/bubble_stories.dart';
import 'package:cloning_instagram/util/user_post.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'salamoposo',
    'ahmed',
    'mark',
    'oni',
    'ketty',
    'joko',
    'aren'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                  ),
                ),
                Icon(Icons.messenger_outline_rounded),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // STORIES
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: ((context, index) {
                return BubbleStories(text: people[index]);
              }),
            ),
          ),
          // POST
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(name: people[index]);
                }),
          )
        ],
      ),
    );
  }
}
