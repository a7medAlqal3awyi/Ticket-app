import 'package:flutter/material.dart';
import 'package:ticket_app/screens/profile_screen.dart';
import 'package:ticket_app/screens/search_screen.dart';
import 'package:ticket_app/screens/ticket_screen.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget>screens=const[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen()
  ];

  int currentIndex=0;
  void changeBotton(index){
    currentIndex =index;
    print('${currentIndex.toString()}');
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens[currentIndex]),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: changeBotton,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined),
              label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: 'Profile'),
        ],
      ),
    );
  }
}
