import 'package:fitness/ui/views/botton_nav_controller/category/blog.dart';
import 'package:fitness/ui/views/botton_nav_controller/category/podcast.dart';
import 'package:fitness/ui/views/botton_nav_controller/category/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../const/app_colors.dart';

class NavMedia extends StatelessWidget {
  const NavMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Media",
            style: TextStyle(fontSize: 18.sp),
          ),
          automaticallyImplyLeading: false,
          toolbarHeight: 50.h,
          elevation: 0,
          bottom: TabBar(
            labelColor: AppColors.backgroudColor,
            unselectedLabelColor: Colors.grey,
            indicatorWeight: 2.5,
            indicatorColor: AppColors.backgroudColor,
            labelStyle: TextStyle(fontSize: 14.sp),
            tabs: [
              Tab(
                text: "Videos",
              ),
              Tab(
                text: "Pocdasts",
              ),
              Tab(
                text: "Blog",
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Container(
                child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (_, i) {
                      // final data = docs[i].data();
                      return InkWell(
                        onTap: () {
                          Get.to(VideoCategory());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 10.w),
                          margin: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://t3.ftcdn.net/jpg/02/14/59/60/360_F_214596042_QB9lDRVMmAr1mn9eFZFgjL9JONicmjn3.jpg"),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("category_tile",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (_, i) {
                      // final data = docs[i].data();
                      return InkWell(
                        onTap: () {
                          Get.to(PodcastCategory());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 10.w),
                          margin: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://us.123rf.com/450wm/mikedesign/mikedesign2111/mikedesign211100009/mikedesign211100009.jpg?ver=6"),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("category_tile",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (_, i) {
                      // final data = docs[i].data();
                      return InkWell(
                        onTap: () {
                          Get.to(BlogCategory());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 10.w),
                          margin: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/c/c9/Muscular-athletic-bodybuilder-fitness-model-posing-exercis-weights-exercises-gym-64856941.jpg"),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("category_tile",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


