

import 'package:dog_app/core/exports.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this._prefixIcon,
    required this._sufixIcon,
    this.onSubmitted,
    this.onChanged,
    this.onClear,
    required this._textEditingController,
    this.hint = 'search',
  });
  final IconData _prefixIcon;
  final IconData? _sufixIcon;
  final String hint;
  final void Function(String value)? onSubmitted;
  final void Function(String value)? onChanged;
  final VoidCallback? onClear;
  TextEditingController _textEditingController;

  @override
  State<StatefulWidget> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    super.initState();
    // _textEditingController = TextEditingController();
    widget._textEditingController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    widget._textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppInsets.allMd,
      child: TextField(
        keyboardType: .text,
        controller: widget._textEditingController,
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
          suffixIcon: (widget._textEditingController.text.isNotEmpty)
              ? IconButton(
                  icon: Icon(Icons.clear_rounded, color: AppColors.onPrimary),
                  onPressed: () {
                    widget._textEditingController.clear();
                    widget.onClear?.call();
                  },
                )
              : Icon(widget._sufixIcon, color: AppColors.onPrimary),
        ),
        onChanged: widget.onChanged,
        //TODO (dont do this clearing the controller only for chat screen so that aftter pressing enter text field get blank)
        onSubmitted: widget.onSubmitted,
      ),
    );
  }
}
