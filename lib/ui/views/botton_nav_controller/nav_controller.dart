
import 'package:fitness/ui/views/botton_nav_controller/pages/nav_challenges.dart';
import 'package:fitness/ui/views/botton_nav_controller/pages/nav_home.dart';
import 'package:fitness/ui/views/botton_nav_controller/pages/nav_media.dart';
import 'package:fitness/ui/views/botton_nav_controller/pages/nav_my_profile.dart';
import 'package:fitness/ui/views/botton_nav_controller/pages/nav_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottonNavController extends StatefulWidget {
  const BottonNavController({super.key});

  @override
  State<BottonNavController> createState() => _BottonNavControllerState();
}

class _BottonNavControllerState extends State<BottonNavController> {
  int _selectedInbox = 0;

  void __navigatorButtonBar(int index) {
    setState(() {
      _selectedInbox = index;
    });
  }

  final List<Widget> _page = [
    NavHome(),
    NavChallenges(),
    NavMedia(),
    NavSearch(),
    NavMyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _page[_selectedInbox],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedInbox,
        onTap: __navigatorButtonBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 25.sp,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.chartSimple,
              size: 25.sp,
            ),
            label: "Challeages",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.dumbbell,
              size: 20.sp,
            ),
            label: "Media",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              size: 25.sp,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 25.sp,
            ),
            label: "My Profile",
          ),
        ],
      ),
    );
  }
}
