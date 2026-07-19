import 'package:dog_app/core/exports.dart';

class SectionHeader extends StatelessWidget {
  String title;
  String? actionText;
  SectionHeader({required this.title, this.actionText});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: AppInsets.allMd,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          if (actionText case String text)
            Text(text, style: TextStyle(color: AppColors.onPrimary)),
        ],
      ),
    );
  }
}
