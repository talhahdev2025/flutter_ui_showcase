import 'package:dog_app/core/exports.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('this is services screen'),
              ElevatedButton(
                onPressed: () => Navigator.pop(context,),
                child: Text('Go to HomePage'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
