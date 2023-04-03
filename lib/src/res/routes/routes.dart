import 'package:get/get.dart';
import 'package:getx_mvvm/src/res/routes/routes_name.dart';
import 'package:getx_mvvm/src/view/splash_screen.dart';

import '../../view/home/home_view.dart';
import '../../view/login/login_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(
            microseconds: 250,
          ),
        ),
         GetPage(
      name: RouteName.loginView,
      page: () => LoginView() ,
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.homeView,
      page: () => HomeView() ,
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
      ];
}
  

// we can add here animation also 

// to add route in system , get into main file and change MaterialApp to GetMaterialApp
// add home:     //if you do not add home then you will get error
// add getPages: AppRoutes.appRoutes
