import 'package:dog_app/core/exports.dart';
import 'package:dog_app/widgets/custom_filled_button.dart';
import 'package:dog_app/widgets/custom_text_field.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double appBarHeight = MediaQuery.of(context).size.height * 0.1;
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                //AppBar
                SliverAppBar(
                  actions: [Icon(Icons.notifications_outlined)],
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
                //serach box
                SliverToBoxAdapter(child: CustomTextField()),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    title: 'Top Vetrinarians',
                    actionText: 'See All',
                  ),
                ),
                //ListView
                SliverList.builder(
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final Doctor doctor = doctors[index];
                    return Container(
                      margin: EdgeInsets.all(AppSpacing.md),
                      padding: EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: AppRadius.extraLarge,
                        boxShadow: AppShadows.card,
                      ),
                      height: 390,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: AppRadius.extraLarge,
                              boxShadow: AppShadows.card,
                              image: DecorationImage(
                                image: NetworkImage(doctor.image),
                                fit: .cover,
                              ),
                            ),
                          ),
                          //name and mail icon
                          Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              vertical: AppSpacing.md,
                            ),
                            child: Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      doctor.name,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.headlineMedium,
                                    ),
                                    Text(
                                      '${doctor.category} • ${doctor.experience}',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                                CustomIcon(
                                  iconData: Icons.mail_outline_rounded,
                                  iconColor: AppColors.onSecondary,
                                  backgroundColor: AppColors.secondary
                                      .withValues(alpha: 0.6),
                                ),
                              ],
                            ),
                          ),
                          //reivews and distance
                          Row(
                            children: [
                              Wrap(
                                alignment: .center,
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: AppColors.orange,
                                  ),
                                  Text(
                                    ' ${doctor.rating}',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleMedium,
                                  ),
                                  Text(
                                    ' (${doctor.reviews})',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(fontWeight: .w100),
                                  ),
                                  SizedBox(width: AppSpacing.md),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                        ' ${doctor.distance} km',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(fontWeight: .w100),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // book appointment
                          Padding(
                            padding: EdgeInsetsGeometry.only(
                              top: AppSpacing.md,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: .end,
                                    children: [
                                      Text(
                                        '\$${doctor.fee}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium
                                            ?.copyWith(
                                              color: AppColors.onPrimary,
                                            ),
                                      ),
                                      Text(' / visit'),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: CustomFilledButton(
                                    text: 'Book Now',
                                    onTap: () => Navigator.pushNamed(
                                      context,
                                      AppRoutes.errorPage,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
