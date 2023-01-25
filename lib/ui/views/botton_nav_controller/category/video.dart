import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../details/blog_details.dart';

class VideoCategory extends StatefulWidget {
  @override
  State<VideoCategory> createState() => _VideoCategoryState();
}

class _VideoCategoryState extends State<VideoCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20.sp),
        ),
        centerTitle: true,
        title: Text(
          "Category",
          style: TextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            SizedBox(
              height: 700.h,
              child: InkWell(
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (_, i) {
                      return InkWell(
                        onTap: () {
                          Get.to(BlogDetails());
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
                                  ("https://media.istockphoto.com/id/601902710/photo/closeup-of-weightlifter-clapping-hands-before-barbell-workout-a.jpg?s=612x612&w=0&k=20&c=0rknDe7xm1zefbQddglWR8xeKRrY4ue4Vhd737kpC2E=")),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 48.h, left: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("category_title",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
