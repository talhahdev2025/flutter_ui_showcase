import 'package:dog_app/core/exports.dart';

class ListCard extends StatelessWidget {
  num rating;
  Color color;
  String category;
  String name;
  String image;
  ListCard({
    this.color = AppColors.lightBlue,
    this.rating = 0,
    required this.category,
    required this.image,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    color = switch (rating) {
      <= 1 => AppColors.lightGrey,
      <= 2 => AppColors.lightBlue,
      <= 3 => AppColors.lightOrange,
      <= 4 => AppColors.lightPink,
      _ => AppColors.lightOrange,
    };
    return Container(
      padding: AppInsets.allXXs,
      width: 210,
      decoration: BoxDecoration(color: color, borderRadius: AppRadius.large),
      child: Column(
        mainAxisAlignment: .spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Padding(
                  padding: AppInsets.allSm,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(image),
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
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: AppInsets.allMd,
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
                Flexible(
                  fit: .tight,
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        name,
                        maxLines: 1,
                        overflow: .ellipsis,
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(overflow: .fade, height: 1),
                      ),
                      Text(category),
                    ],
                  ),
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
