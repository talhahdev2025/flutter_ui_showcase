import 'package:dog_app/core/exports.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = screenHeight * 0.1;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.notifications_outlined)],
        actionsPadding: AppInsets.allMd,
        toolbarHeight: appBarHeight,
        title: Text(
          'Bruno The Dog',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        flexibleSpace: FlexibleSpaceBar(collapseMode: CollapseMode.pin),
      ),
      body: Column(
        children: [
          OnTapAnimated(
            child: Container(
              padding: AppInsets.allXXs,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
              child: Container(
                padding: AppInsets.allXXs,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.background,
                ),
                child: CircleAvatar(
                  maxRadius: 60,
                  minRadius: 50,

                  foregroundImage: AssetImage(AppImages.homeCardDog),
                ),
              ),
            ),
          ),
          Text(
            'Alex Johnson',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'Member since October 2023',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Padding(
            padding: AppInsets.allMd,
            child: Row(
              spacing: AppSpacing.md,
              children: [
                Expanded(
                  child: Container(
                    padding: AppInsets.allMd,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9EFE0),
                      borderRadius: AppRadius.large,
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Icon(Icons.pets, color: AppColors.onPrimary),
                        Text(
                          '01',
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(color: AppColors.onPrimary),
                        ),
                        Text(
                          'Total Pets',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: AppColors.onPrimary),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: AppInsets.allMd,
                    decoration: BoxDecoration(
                      color: Color(0xFFEBF6FA),
                      borderRadius: AppRadius.large,
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: AppColors.onSecondary,
                        ),
                        Text(
                          '12',
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(color: AppColors.onSecondary),
                        ),
                        Text(
                          'Visits',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: AppColors.onSecondary),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //listvieww
          Expanded(
            child: Container(
              margin: AppInsets.allMd,
              decoration: BoxDecoration(
                boxShadow: AppShadows.card,
                color: AppColors.background,
                borderRadius: AppRadius.large,
              ),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  UserProfileListTile(
                    headlineText: 'Appointments',
                    lableText: '2 Sessions Scheduled',
                    leadingIcon: Icons.calendar_month_outlined,
                    leadingBackgroundColor: Color(0xFFEBF1EC),
                    leadingIconColor: Color(0xFF4A654E),
                  ),
                  UserProfileListTile(
                    headlineText: 'Saved Doctors',
                    lableText: '4 Specialists',
                    leadingIcon: Icons.favorite_border_rounded,
                    leadingBackgroundColor: AppColors.boarding,
                    leadingIconColor: Color(0xFFED9720),
                  ),
                  UserProfileListTile(
                    headlineText: 'My Orders',
                    lableText: 'Track your supplies',
                    leadingIcon: Icons.shopping_bag_outlined,
                    leadingBackgroundColor: AppColors.secondary.withValues(
                      alpha: 0.4,
                    ),
                    leadingIconColor: AppColors.onSecondary,
                  ),
                  UserProfileListTile(
                    headlineText: 'Payment Method',
                    lableText: 'Master Card ',
                    leadingIcon: Icons.payments_outlined,
                    leadingBackgroundColor: AppColors.lightGrey,
                    leadingIconColor: AppColors.black,
                  ),
                  UserProfileListTile(
                    headlineText: 'Settings',
                    lableText: '2 Sessions Scheduled',
                    leadingIcon: Icons.settings_rounded,
                    leadingBackgroundColor: AppColors.lightGrey,
                    leadingIconColor: AppColors.black,
                    onTap: () => setState(() {
                      Navigator.pushNamed(context, AppRoutes.settings);
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
