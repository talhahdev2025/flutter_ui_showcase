import 'package:dog_app/core/exports.dart';

class CustomFilledButton extends StatelessWidget {
  CustomFilledButton({super.key, this.onTap, required this.text});
  void Function()? onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FilledButton(
      onPressed: onTap,
      style: FilledButton.styleFrom(),
      child: Text(text),
    );
  }
}
