import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../details/blog_details.dart';

class PodcastCategory extends StatefulWidget {
 
  @override
  State<PodcastCategory> createState() => _PodcastCategoryState();
}

class _PodcastCategoryState extends State<PodcastCategory> {
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
                                  ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTwgo7dmJVNw0V7vq5oVe3M2TMrHTzioxP-w&usqp=CAU")),
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
