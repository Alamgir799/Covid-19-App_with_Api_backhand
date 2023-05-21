// ignore_for_file: prefer_const_constructors

import 'package:covid_19/ui/views/world_state_screen.dart';
import 'package:get/get.dart';
import '../views/countries_list.dart';
import '../views/details_screen.dart';
import '../views/splash/splash_screen.dart';

const String splash = '/splash-screen';
const String worldState = '/worldState-screen';
const String countriesList = '/countriesList-screen';
const String detailsScreen = '/details-screen';

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: worldState,
    page: () => WorldStateScreen(),
  ),
  GetPage(
    name: countriesList,
    page: () => CountriesListScreen(),
  ),
  GetPage(
    name: detailsScreen,
    page: () => DetailsScreen(
      detailsData: Get.arguments,
      // image: Get.arguments,
      // name: Get.arguments,
      // totalCases: Get.arguments,
      // totalDeaths: Get.arguments,
      // totalRecovered: Get.arguments,
      // active: Get.arguments,
      // critical: Get.arguments,
      // todayRecovered: Get.arguments,
      // test: Get.arguments,
    ),
  ),
];
