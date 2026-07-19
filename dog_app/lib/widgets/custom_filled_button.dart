import 'package:dog_app/core/exports.dart';

class CustomFilledButton extends StatelessWidget {
  CustomFilledButton({
    super.key,
    this._onTap,
    required this.text,
    this._backgroundColor = AppColors.primary,
    this._textColor = AppColors.white,
  });
  void Function()? _onTap;
  String text;
  Color _textColor;
  Color _backgroundColor;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FilledButton(
      onPressed: _onTap,
      style: FilledButton.styleFrom(backgroundColor: _backgroundColor),
      child: Text(text, style: TextStyle(color: _textColor)),
    );
  }
}
