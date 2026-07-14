import 'package:dog_app/core/exports.dart';

class ListCard extends StatelessWidget {
  ListCard({this.color = AppColors.lightBlue, this.rating = 0});
  num rating;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppInsets.allXXs,
      width: 200,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.5),
        borderRadius: AppRadius.large,
      ),
      child: Column(
        mainAxisAlignment: .spaceBetween,
        children: [
          Padding(
            padding: AppInsets.allSm,
            child: CircleAvatar(
              backgroundImage: AssetImage(AppImages.homeCardDog),
              backgroundColor: color,
              radius: 60,
            ),
          ),
          Row(
            mainAxisAlignment: .center,
            children: <Widget>[
              for (int i = 1; i <= 5; i++)
                if (i <= rating)
                  Icon(Icons.star_rounded, color: Colors.amber)
                else
                  Icon(Icons.star_border_rounded),
            ],
          ),
          Container(
            width: double.infinity,
            padding: AppInsets.allSm,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: AppRadius.lg,
                bottomRight: AppRadius.lg,
              ),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Dr. Helen',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text('Dentist'),
                  ],
                ),
                CustomIcon(
                  iconData: Icons.mail_outline_rounded,
                  // backgroundColor: AppColors.extraLightPink,
                  backgroundColor: color.withValues(alpha: 0.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
