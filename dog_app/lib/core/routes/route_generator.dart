import 'package:dog_app/core/exports.dart';
import 'package:dog_app/screens/doctor_profile.dart';
import 'package:dog_app/screens/doctor_profile_arguments.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return PageTransition.slide(page: MyHomePage());
      case AppRoutes.services:
        return PageTransition.slide(page: Services());
      case AppRoutes.doctorProfile:
        final args = settings.arguments as DoctorProfileArguments ;

        return  PageTransition.slide(page: DoctorProfile(id: args.id));

      default:
        return PageTransition.slide(page: ErrorPage());
    }
  }
}
