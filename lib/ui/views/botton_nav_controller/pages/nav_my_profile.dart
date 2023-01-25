import 'package:fitness/ui/views/botton_nav_controller/details/blog_details.dart';
import 'package:fitness/ui/widgets/home_custom_widget.dart';
import 'package:fitness/ui/widgets/my_profile_challenge_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_colors.dart';

class NavMyProfile extends StatefulWidget {
  const NavMyProfile({super.key});

  @override
  State<NavMyProfile> createState() => _NavMyProfileState();
}

class _NavMyProfileState extends State<NavMyProfile>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32.h, left: 16.w),
                  child:
                      Text("Good Morning,", style: TextStyle(fontSize: 24.sp)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.h),
              child: TabBar(
                labelColor: AppColors.backgroudColor,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 2,
                indicatorColor: AppColors.backgroudColor,
                //labelStyle: style18(Colors.white),
                controller: tabController,
                tabs: [
                  Tab(
                    text: 'My Challenges',
                  ),
                  Tab(
                    text: 'Profile Details',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //tabs
                        MyProfileChallenge(
                            title: "title",
                            img:
                                "https://lh3.googleusercontent.com/oc44utPsJOPwb9IXuyZRw5zxQScglRIuMn7JkoVgZM09kg56tOtgXki58Odpz2AhUuo_0QToihqUdsHJ8rcMIBcoB6g=w1000",
                            item_title: "item_title,"),
                        MyProfileChallenge(
                            title: "title",
                            img:
                                "https://www.frontsigns.com/wp-content/uploads/2021/07/gym-Interior-design-idea.jpg",
                            item_title: "item_title,"),
                        MyProfileChallenge(
                            title: "title",
                            img:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiamWOZf0AoZ7sRgRFxacydg2JZhXHygwwWPCQXy31pDE6-aTxZh8mlKbYlNmnsJgklm4&usqp=CAU",
                            item_title: "item_title,"),

                        SizedBox(height: 15.h),
                      ],
                    ),
                  ),
                  Container(
                    child: Center(child: Text("Emety")),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
