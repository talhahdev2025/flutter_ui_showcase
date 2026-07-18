import 'package:dog_app/core/exports.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case AppRoutes.services:
        return MaterialPageRoute(builder: (context) => Services());
      default:
        //TODO: add error page
        return MaterialPageRoute(builder: (context) => ErrorWidget('error'));
    }
  }
}
