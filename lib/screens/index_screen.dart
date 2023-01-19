import 'package:campus_community/tabs/tab_forum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:campus_community/tabs/tab_home.dart';
import 'package:campus_community/tabs/tab_profile.dart';
import 'package:campus_community/tabs/tab_forum.dart';

import '../tabs/tab_chat.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() {
    return _IndexScreenState();
  }
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 0;

  final List<Widget> tabs = [
    TabHome(),
    TabChat(),
    TabForum(),
    TabProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 44,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 12),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'forum'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}
