import 'package:dog_app/core/exports.dart';

class PageTransition {
  PageTransition._();
  static const _transitionDuration = Duration(seconds: 10);
  static Route fade({required Widget page}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: _transitionDuration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  static Route slide({required Widget page}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: _transitionDuration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          // position: Tween<Offset>(
          //   begin: Offset(1, 0),
          //   end: Offset.zero,
          // ).animate(animation),
          position: animation.drive(
            Tween(
              begin: Offset(1, 0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.ease)),
          ),
          child: child,
        );
      },
    );
  }
}
