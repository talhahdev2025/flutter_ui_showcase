import 'package:dog_app/core/exports.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.text,
    this._alignment = .centerLeft,
    this._margin = AppInsets.allMd,
    this._padding = AppInsets.allMd,
  });
  final String text;
  final AlignmentGeometry _alignment;
  final EdgeInsetsGeometry _padding;
  final EdgeInsetsGeometry _margin;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Align(
          alignment: _alignment,
          child: Container(
            padding: _padding,
            margin: _margin,
            constraints: BoxConstraints(maxWidth: constraints.maxWidth * 0.7),
            decoration: BoxDecoration(
              color: (_alignment == AlignmentGeometry.centerEnd)
                  ? AppColors.primary
                  : AppColors.surfaceLow,
              borderRadius: AppRadius.large,
            ),
            child: Text(text),
          ),
        );
      },
    );
  }
}
