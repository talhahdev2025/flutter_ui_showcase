import 'package:dog_app/core/exports.dart';

class CustomFilledButton extends StatelessWidget {
  CustomFilledButton({
    super.key,
    this._onTap,
    required this.text,
    this._backgroundColor = AppColors.primary,
    this._textColor = AppColors.white,
  });
  final void Function()? _onTap;
  final String text;
  final Color _textColor;
  final Color _backgroundColor;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FilledButton(
      onPressed: _onTap,
      style: FilledButton.styleFrom(
        backgroundColor: (_onTap != null)
            ? _backgroundColor
            : Color(0xFFFEF3C7),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: (_onTap != null) ? _textColor : Color(0xFFD97706),
        ),
      ),
    );
  }
}
