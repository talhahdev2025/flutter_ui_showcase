import 'package:dog_app/core/exports.dart';

class SectionHeader extends StatelessWidget {
  String title;
  String actionText;
  SectionHeader({required this.title, this.actionText = 'See All'});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyMedium),
        Text(actionText),
      ],
    );
  }
}
