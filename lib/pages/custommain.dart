import 'package:facebook/marketplace.dart';
import 'package:facebook/notification.dart';
import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/newsfeed.dart';
import 'package:facebook/pages/profile.dart';
import 'package:facebook/pages/reels.dart';
import 'package:flutter/material.dart';

class CustomMain extends StatefulWidget {
  const CustomMain({super.key});

  @override
  State<CustomMain> createState() => _CustomMainState();
}

class _CustomMainState extends State<CustomMain> {
  int currenPage = 0;

  List pages = [
    const Newsfeed(),
    const ReelsPage(),
    const FriendsPage(),
    const marketplacepage(),
    const NotificationPage(),
    const profilepage(),
  ];

void onTapped(int index){
  setState(() {
    currenPage = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currenPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currenPage,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Friends"),
          BottomNavigationBarItem(icon: Icon(Icons.local_convenience_store), label: "Marketplace"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: CircleAvatar(
            backgroundImage: AssetImage("assets/profile/prof1.jpg"),
          ), label: "Profile"),
        ]
      ),
    );
  }
}