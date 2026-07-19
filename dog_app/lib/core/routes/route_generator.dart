import 'package:dog_app/core/exports.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return PageTransition.slide(page: MyHomePage());
      case AppRoutes.services:
        return PageTransition.slide(page: Services());

      default:
        return PageTransition.slide(page: ErrorPage());
    }
  }
}
