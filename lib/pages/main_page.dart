// ignore_for_file: deprecated_member_use

import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_page.dart';
import '../utils/assets.dart';
import '../utils/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _page = 0;
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _page,
        children: [
          NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.direction == ScrollDirection.forward) {
                setState(() => isVisible = true);
              } else if (notification.direction == ScrollDirection.reverse) {
                setState(() => isVisible = false);
              }
              return true;
            },
            child: const HomePage(),
          ),
          const Center(
            child: Text('Page 2'),
          ),
          const Center(
            child: Text('Page 3'),
          ),
          const Center(
            child: Text('Page 4'),
          ),
        ],
      ),
      floatingActionButton: Visibility(
        visible: isVisible,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: white,
            size: 28,
          ),
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: isVisible,
        child: CupertinoTabBar(
          currentIndex: _page,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          backgroundColor: background,
          items: [
            BottomNavigationBarItem(
              icon: Stack(
                alignment: const Alignment(0.8, -1.2),
                children: [
                  SvgPicture.asset(
                    _page == 0 ? homeFilledIcon : homeOutlinedIcon,
                    color: white,
                    width: 24,
                    height: 24,
                  ),
                  const Icon(
                    Icons.circle,
                    color: blue,
                    size: 7,
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                searchIcon,
                color: white,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _page == 2 ? notifFilledIcon : notifOutlinedIcon,
                color: white,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _page == 3 ? envelopeFilledIcon : envelopeOutlinedIcon,
                color: white,
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
