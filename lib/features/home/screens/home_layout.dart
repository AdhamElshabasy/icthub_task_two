import 'package:flutter/material.dart';
import 'package:task_two/features/api_list/screens/list_screen.dart';
import 'package:task_two/features/home/screens/about_screen.dart';

//-------------------------------------------------------------------------//

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> listScreens = [const ListScreen(), const AboutScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: listScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'About Me'),
        ],
      ),
    ));
  }
}
