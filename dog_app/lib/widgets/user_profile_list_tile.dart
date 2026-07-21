import 'package:dog_app/core/exports.dart';

class UserProfileListTile extends StatelessWidget {
  const UserProfileListTile({
    super.key,
    required this.headlineText,
    required this.lableText,
    required this.leadingIcon,
    required this.leadingBackgroundColor,
    required this.leadingIconColor,
  });
  final String headlineText;
  final String lableText;
  final IconData leadingIcon;
  final Color leadingBackgroundColor;
  final Color leadingIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: leadingBackgroundColor,
          child: Icon(leadingIcon, color: leadingIconColor),
        ),
        title: Text(
          headlineText,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: .bold),
        ),
        subtitle: Text(
          lableText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
