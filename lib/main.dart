import 'package:fitness/ui/views/botton_nav_controller/details/blog_details.dart';
import 'package:fitness/ui/views/botton_nav_controller/nav_controller.dart';
import 'package:fitness/ui/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'ui/route/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(411, 823),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Fitness Apps',

            // theme: AppTheme().lightTheme(context),
            //darkTheme: AppTheme().darkTheme(context),
            //themeMode: ThemeMode.light,
            //themeMode: ThemeMode.system,
            initialRoute: bottonNavController,
            getPages: getPages,
            home: BottonNavController(),
          );
        });
  }
}
