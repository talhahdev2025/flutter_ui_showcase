import 'package:dog_app/core/exports.dart';
import 'package:dog_app/screens/settings.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return PageTransition.slide(page: MyHomePage());

      case AppRoutes.services:
        return PageTransition.slide(page: Services());

      case AppRoutes.doctorProfile:
        final args = settings.arguments as DoctorProfileArguments;
        return PageTransition.slide(page: DoctorProfile(args: args));

      case AppRoutes.chat:
        final args = settings.arguments as ChatArguments;
        return PageTransition.slide(page: Chat(args: args));
      case AppRoutes.shop:
        return PageTransition.slide(page: Shop());

      case AppRoutes.userProfile:
        return PageTransition.slide(page: UserProfile());

      case AppRoutes.settings:
        return PageTransition.slide(page: Settings());

      default:
        return PageTransition.slide(page: ErrorPage());
    }
  }
}
