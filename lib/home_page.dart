import 'package:cloning_instagram/pages/home.dart';
import 'package:cloning_instagram/pages/person.dart';
import 'package:cloning_instagram/pages/reels.dart';
import 'package:cloning_instagram/pages/search.dart';
import 'package:cloning_instagram/pages/shop.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigaterBottom(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // NAVIGASI KE HALAMAN
  final List<Widget> _children = [
    UserHome(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigaterBottom,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
