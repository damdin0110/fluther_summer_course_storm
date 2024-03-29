import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import "../screens/add_post_screen.dart";
import "../screens/home_screen.dart";
import "../screens/profile_screen.dart";

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
              label: '',
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home,
                color: _page == 0 ? Colors.blue : Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              backgroundColor: Colors.white,
              icon: Icon(
               Icons.add_box_outlined,
                color: _page == 1 ? Colors.blue : Colors.black,
              )),
          BottomNavigationBarItem(
              label: '',
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.account_circle ,
                color: _page == 2 ? Colors.blue : Colors.black,
              )),
        ],
      ),
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            HomeScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }

  void navigationTapped(
    int page,
  ) {
    pageController.jumpToPage(page);
  }

  onPageChanged(
    int page,
  ) {
    setState(() {
      _page = page;
    });
  }
}
