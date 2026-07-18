import 'package:dog_app/core/exports.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.asset(AppImages.homeCardDog),
              Text('Error 404 \n Page not Found'),
            ],
          ),
        ),
      ),
    );
  }
}
