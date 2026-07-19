import 'package:dog_app/core/exports.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this._text,
    required this._labelText,
    required this._color,

    required this._textColor,
  });
  final String _text;
  final Color _color;
  final String _labelText;

  final Color _textColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: .center,
      decoration: BoxDecoration(borderRadius: AppRadius.large, color: _color),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text(
            _text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: _textColor,
              fontWeight: .w600,
            ),
            textAlign: .center,
          ),
          Text(
            _labelText,
            textAlign: .center,
            style: TextStyle(color: _textColor),
          ),
        ],
      ),
    );
  }
}
