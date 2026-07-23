import 'package:dog_app/core/exports.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this._prefixIcon,
    required this._sufixIcon,
    this.onSubmitted,
    this.onChanged,
    this.onClear,
    this.hint = 'search',
  });
  final IconData _prefixIcon;
  final IconData? _sufixIcon;
  final String hint;
  final void Function(String value)? onSubmitted;
  final void Function(String value)? onChanged;
  final VoidCallback? onClear;
  @override
  State<StatefulWidget> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppInsets.allMd,
      child: TextField(
        keyboardType: .text,
        controller: _textEditingController,
        decoration: InputDecoration(
          fillColor: AppColors.surfaceLow,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: AppRadius.medium,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppRadius.medium,
            borderSide: BorderSide(color: AppColors.primary),
          ),
          hint: Text(widget.hint),
          prefixIcon: Icon(widget._prefixIcon),
          suffixIcon: (_textEditingController.text.isNotEmpty)
              ? IconButton(
                  icon: Icon(Icons.clear_rounded, color: AppColors.onPrimary),
                  onPressed: () {
                    _textEditingController.clear();
                    widget.onClear?.call();
                  },
                )
              : Icon(widget._sufixIcon, color: AppColors.onPrimary),
        ),
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
      ),
    );
  }
}
