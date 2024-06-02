import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:memes/presentation/bindings/home_binding.dart';
import 'package:memes/presentation/pages/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
