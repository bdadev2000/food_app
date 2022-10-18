import 'package:food_app/ui/home_screen.dart';
import 'package:food_app/ui/product_overview.dart';
import 'package:food_app/ui/sign_in.dart';

class Routes{
  Routes._();
  static const String signInScreen = '/';
  static const String homeScreen = '/home_screen';
  static const String productOverviewScreen = '/product_overview_screen';


  static var routes = {
    signInScreen : (context) => const SignInScreen(),
    homeScreen : (context) => const HomeScreen(),
    productOverviewScreen : (context) => const ProductOverviewScreen(),

  };
}