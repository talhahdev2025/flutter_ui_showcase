import 'package:dog_app/core/exports.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = screenHeight * 0.1;
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.notifications_outlined)],
        actionsPadding: AppInsets.allMd,
        toolbarHeight: appBarHeight,
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        flexibleSpace: FlexibleSpaceBar(collapseMode: CollapseMode.pin),
      ),
      body: Padding(
        padding: AppInsets.allMd,

        child: Column(
          children: [
            Container(
              padding: AppInsets.allMd,

              decoration: BoxDecoration(
                borderRadius: AppRadius.large,
                color: AppColors.background,
              ),
              child: Row(
                spacing: AppSpacing.md,
                children: [
                  CircleAvatar(child: Icon(Icons.person_outline)),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Bruno\'s Human',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'Premimum Member',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Text('Edit'),
                ],
              ),
            ),
            //general
            Container(
              padding: AppInsets.allMd,
              child: Align(
                alignment: .centerStart,
                child: Text(
                  'General',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            //general settings list view
            Container(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
              decoration: BoxDecoration(
                boxShadow: AppShadows.card,
                color: AppColors.background,
                borderRadius: AppRadius.large,
              ),
              child: Column(
                children: [
                  UserProfileListTile(
                    headlineText: 'Dark Mode',
                    leadingIcon: Icons.dark_mode_outlined,
                    leadingBackgroundColor: Color(0xFFEBF1EC),
                    leadingIconColor: Color(0xFF4A654E),
                  ),
                  UserProfileListTile(
                    headlineText: 'Notifications',
                    leadingIcon: Icons.notifications_active_outlined,
                    leadingBackgroundColor: AppColors.boarding,
                    leadingIconColor: Color(0xFFED9720),
                  ),
                  UserProfileListTile(
                    headlineText: 'Privacy',
                    leadingIcon: Icons.lock_outline_rounded,
                    leadingBackgroundColor: AppColors.secondary.withValues(
                      alpha: 0.4,
                    ),
                    leadingIconColor: AppColors.onSecondary,
                  ),
                  UserProfileListTile(
                    headlineText: 'Language',
                    leadingIcon: Icons.translate_outlined,
                    leadingBackgroundColor: AppColors.lightGrey,
                    leadingIconColor: AppColors.black,
                  ),
                ],
              ),
            ),
            //support and info
            Container(
              padding: AppInsets.allMd,
              child: Align(
                alignment: .centerStart,
                child: Text(
                  'Support and info',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
              decoration: BoxDecoration(
                boxShadow: AppShadows.card,
                color: AppColors.background,
                borderRadius: AppRadius.large,
              ),
              child: Column(
                children: [
                  UserProfileListTile(
                    headlineText: 'Help Center',
                    leadingIcon: Icons.help_outline_outlined,
                    leadingBackgroundColor: Color(0xFFEBF1EC),
                    leadingIconColor: Color(0xFF4A654E),
                  ),
                  UserProfileListTile(
                    headlineText: 'About App',
                    leadingIcon: Icons.info_outline,
                    leadingBackgroundColor: AppColors.boarding,
                    leadingIconColor: Color(0xFFED9720),
                  ),
                ],
              ),
            ),
            //Logout btn
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: AppSpacing.md),
                padding: AppInsets.allMd,
                decoration: BoxDecoration(
                  borderRadius: AppRadius.medium,
                  border: Border.all(color: AppColors.grey),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(Icons.logout_outlined, color: const Color(0xFFD83B30)),
                    Text(
                      ' Log Out',
                      style: TextStyle(
                        color: const Color(0xFFD83B30),
                        fontSize: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.fontSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //version
            Container(
              margin: AppInsets.allMd,
              child: Text(
                'Version 2.4.1 (10294)',
                style: TextStyle(color: AppColors.extralightGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
