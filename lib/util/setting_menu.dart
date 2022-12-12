import 'package:flutter/material.dart';

class MenuSetting extends StatelessWidget {
  final String textSetting;
  final IconData iconset;
  const MenuSetting(
      {required this.textSetting, required this.iconset, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 30,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(iconset),
                ),
                Text(textSetting),
              ],
            ),
          ),
        ),
        Divider(
          height: 17,
          color: Colors.black,
          thickness: 0.3,
        ),
      ],
    );
  }
}
