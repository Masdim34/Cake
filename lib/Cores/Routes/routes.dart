import 'package:cake/Features/Auth/login/login_view.dart';
import 'package:cake/Features/Auth/signup/signup_view.dart';
import 'package:cake/Features/Explore/explore_view.dart';
import 'package:cake/Features/Home/home_view.dart';
import 'package:cake/Features/LandingPage/landing_page_view.dart';
import 'package:get/get.dart';

class CakeRoutes {
  static const String landing = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String explore = '/explore';

  static List<GetPage> getPages = [
    GetPage(name: landing, page: () => LandingPage()),
    GetPage(name: login, page: () => const LoginView()),
    GetPage(name: signup, page: () => SignupView()),
    GetPage(name: home, page: () => const HomeView()),
    GetPage(name: explore, page: () => const ExploreView())
  ];
}
