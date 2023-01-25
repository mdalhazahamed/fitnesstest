import 'package:fitness/ui/widgets/home_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../route/route.dart';

class NavHome extends StatefulWidget {
  const NavHome({super.key});

  @override
  State<NavHome> createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Dashboard"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            homeCustom(
                title: "Newest Podcast",
                img:
                    "https://firebasestorage.googleapis.com/v0/b/fitness-f7af3.appspot.com/o/images%2Fenergy-boosting-workout.jpg?alt=media&token=98c9502d-23e6-47f3-b336-1b209e88afe9",
                item_title: "item_title"),
            homeCustom(
                title: "Recommended Video",
                img:
                    "https://media.istockphoto.com/id/615883260/photo/difficult-doesnt-mean-impossible.jpg?s=612x612&w=0&k=20&c=cAEJvjTFRuF9H9gRov1Aj4X4I6xV6DSvMwWsf-2IW-0=",
                item_title: "item_title"),
            homeCustom(
                title: "Newest Blog",
                img:
                    'https://img.freepik.com/free-photo/young-healthy-man-athlete-doing-exercise-with-ropes-gym-single-male-model-practicing-hard-training-his-upper-body-concept-healthy-lifestyle-sport-fitness-bodybuilding-wellbeing_155003-27879.jpg?w=2000',
                item_title: "item_title")
          ],
        ),
      ),
    );
  }
}
