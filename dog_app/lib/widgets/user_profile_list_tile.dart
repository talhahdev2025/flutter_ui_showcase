import 'package:dog_app/core/exports.dart';

class UserProfileListTile extends StatelessWidget {
  const UserProfileListTile({
    super.key,
    required this.headlineText,
    this.lableText,
    required this.leadingIcon,
    required this.leadingBackgroundColor,
    required this.leadingIconColor,
    this.onTap,
  });
  final String headlineText;
  final String? lableText;
  final IconData leadingIcon;
  final Color leadingBackgroundColor;
  final Color leadingIconColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
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
      subtitle: (lableText != null)
          ? Text(lableText!, style: Theme.of(context).textTheme.bodyMedium)
          : null,
      trailing: OnTapAnimated(
        onTap: onTap,
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
