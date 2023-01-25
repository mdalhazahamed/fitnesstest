import 'package:fitness/ui/views/botton_nav_controller/details/blog_details.dart';
import 'package:get/get.dart';

import '../views/botton_nav_controller/category/blog.dart';
import '../views/botton_nav_controller/nav_controller.dart';
import '../views/botton_nav_controller/on_boarding.dart';
import '../views/splash_screen.dart';

const String splash = '/splash_screen';
const String login = '/login_screen';
const String onboarding = '/onboarding';
const String registration = '/registration_screen';
const String forgot = '/forgot_screen';
const String bottonNavController = '/bottonNavController';
const String blogDetails = '/blogDetails';
const String category = '/category';

//contrat our page routes

List<GetPage> getPages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnbordingScreen()),
//GetPage(name: registration, page: () => RegistrationScreen()),
 // GetPage(name: login, page: () => LoginScreen()),
  //GetPage(name: forgot, page: () => ForgotScreen()),
 GetPage(name: bottonNavController, page: () => BottonNavController()),
  GetPage(name: blogDetails, page: () => BlogDetails()),
  GetPage(name: category, page: () => BlogCategory()),
];
