import 'package:dog_app/core/exports.dart';

class CustomTextField extends StatefulWidget {
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
    return TextField(
      keyboardType: .text,
      controller: _textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: AppRadius.medium),
        hint: Text('Search for docotrs , clinics'),
        prefixIcon: Icon(Icons.search_rounded),
        suffixIcon: (_textEditingController.text.isNotEmpty)
            ? IconButton(
                icon: Icon(Icons.clear_rounded),
                onPressed: () => setState(() => _textEditingController.clear()),
              )
            : Icon(Icons.filter_list_rounded),
      ),
      onSubmitted: (value) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Searching for $value')));
      },
    );
  }
}
