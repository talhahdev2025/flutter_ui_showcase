import 'package:dog_app/core/exports.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key, required this.args});
  final DoctorProfileArguments args;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;
        double appBarHeight = screenHeight * 0.1;
        return Scaffold(
          body: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              SizedBox(
                width: screenWidth,
                height: screenHeight * 0.9,
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      actions: [
                        Icon(Icons.favorite_border_rounded),
                        SizedBox(width: AppSpacing.md),
                        Icon(Icons.share_outlined),
                      ],
                      actionsPadding: AppInsets.allMd,
                      toolbarHeight: appBarHeight,
                      title: Text(
                        'Bruno The Dog',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                      ),
                    ),
                    //picture card
                    SliverToBoxAdapter(
                      child: Container(
                        clipBehavior: .hardEdge,
                        margin: AppInsets.allMd,
                        width: screenWidth,
                        height: screenHeight * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: AppRadius.extraLarge,
                          boxShadow: AppShadows.card,
                        ),
                        child: Stack(
                          clipBehavior: .hardEdge,
                          children: [
                            Positioned.fill(
                              child: Image.network(args.image, fit: .cover),
                            ),
                            Positioned.fill(
                              child: Container(
                                padding: AppInsets.allMd,
                                decoration: BoxDecoration(
                                  // borderRadius: AppRadius.extraLarge,
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.black54,
                                    ],
                                    begin: .topCenter,
                                    end: .bottomCenter,
                                    stops: [0.6, 1],
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  mainAxisAlignment: .end,
                                  children: [
                                    Text(
                                      args.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge
                                          ?.copyWith(color: AppColors.white),
                                    ),
                                    Text(
                                      args.category,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(color: AppColors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: .topEnd,
                              child: Container(
                                margin: AppInsets.allSm,
                                padding: EdgeInsets.symmetric(
                                  vertical: AppSpacing.xs,
                                  horizontal: AppSpacing.lg,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: AppRadius.extraLarge,
                                  color: (args.isAvailable)
                                      ? AppColors.secondary
                                      : Color(0xFFFEF3C7),
                                ),
                                child: Text(
                                  (args.isAvailable)
                                      ? 'Available'
                                      : 'Not Available',
                                  style: Theme.of(context).textTheme.bodyLarge
                                      ?.copyWith(
                                        color: (args.isAvailable)
                                            ? AppColors.onSecondary
                                            : Color(0xFFD97706),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Stat Contaiens
                    SliverToBoxAdapter(
                      child: Container(
                        padding: AppInsets.allMd,
                        height: screenHeight * 0.12,
                        child: Row(
                          spacing: AppSpacing.md,
                          children: [
                            //#B5E7FE
                            //#CCEACD
                            //#F8DCBE
                            Expanded(
                              child: StatCard(
                                text: args.experience,
                                labelText: 'Experience',
                                color: Color(0xFFB5E7FE),
                                textColor: Color(0xFF0369A1),
                              ),
                            ),
                            Expanded(
                              child: StatCard(
                                text: args.petsHealed,
                                labelText: 'Pets Healed',

                                textColor: Color(0xFF15803D),
                                color: Color(0xFFCCEACD),
                              ),
                            ),
                            Expanded(
                              child: StatCard(
                                text: args.rating.toString(),
                                labelText: 'Rating',
                                textColor: Color(0xFFC2410C),
                                color: Color(0xFFF8DCBE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SectionHeader(
                        title: 'Reviews',
                        actionText: 'See All',
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        padding: AppInsets.allMd,
                        margin: AppInsets.allMd,
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: AppRadius.large,
                          boxShadow: AppShadows.card,
                        ),
                        child: Column(
                          children: [
                            Rating(rating: args.rating),
                            Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                vertical: AppSpacing.md,
                              ),
                              child: Text(
                                ' "${args.reviewText}"',
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(fontStyle: .italic),
                              ),
                            ),
                            Row(
                              spacing: AppSpacing.md,
                              children: [
                                CircleAvatar(
                                  foregroundImage: AssetImage(
                                    AppImages.homeCardDog,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(args.reviewerName),
                                    Text(args.reviewTime),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.1,
                padding: AppInsets.allMd,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: AppRadius.large,
                  boxShadow: AppShadows.floating,
                ),
                // TODO: Book Appointment
                child: CustomFilledButton(
                  text: (args.isAvailable)
                      ? 'Book Appoinment'
                      : 'Not Available',
                  onTap: (args.isAvailable) ? () {} : null,
                ),
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.1),
            child: FloatingActionButton(
              backgroundColor: AppColors.background,
              shape: CircleBorder(),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.chat,
                  arguments: ChatArguments(image: args.image, name: args.name),
                );
              },
              child: Icon(Icons.message_rounded, color: AppColors.primary),
            ),
          ),
        );
      },
    );
  }
}
