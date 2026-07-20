import 'package:dog_app/core/constants/app_spacing.dart';
import 'package:dog_app/core/exports.dart';
import 'package:dog_app/widgets/rating.dart';

class ListCard extends StatelessWidget {
  double rating;
  Color color;
  String category;
  String name;
  int id;
  String image;
  ListCard({
    this.color = AppColors.lightBlue,
    this.rating = 0,
    required this.category,
    required this.id,
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
                  child: Stack(
                    children: [
                      Container(
                        padding: AppInsets.allXXs,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                          backgroundColor: color,
                          radius: 60,
                        ),
                      ),
                      if (rating >= 4)
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: AppInsets.allXs,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: AppRadius.large,
                            ),
                            child: Text(
                              'Top Rated',
                              style: Theme.of(context).textTheme.labelLarge
                                  ?.copyWith(color: AppColors.white),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Rating(rating: rating),
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
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppRoutes.chat,
                    arguments: ChatArguments(image: image, name: name, id: id),
                  ),
                  child: CustomIcon(
                    iconData: Icons.mail_outline_rounded,
                    // backgroundColor: AppColors.extraLightPink,
                    backgroundColor: color.withValues(alpha: 0.5),
                  ),
                  // child: AnimatedIconButton(
                  //   child: CustomIcon(
                  //     iconData: Icons.mail_outline_rounded,
                  //     // backgroundColor: AppColors.extraLightPink,
                  //     backgroundColor: color.withValues(alpha: 0.5),
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class AnimatedIconButton extends StatefulWidget {
//   const AnimatedIconButton({super.key, required this.child});
//   final Widget child;
//   @override
//   State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
// }

// class _AnimatedIconButtonState extends State<AnimatedIconButton> {
//   double _scale = 1.0;

//   void _animate() async {
//     setState(() => _scale = 1.2);

//     await Future.delayed(const Duration(milliseconds: 100));

//     setState(() => _scale = 1.0);
//   }

//   void _scaleDown() {
//     setState(() {
//       _scale = 0.9;
//     });
//   }

//   void _scaleUp() {
//     setState(() {
//       _scale = 1.0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         _animate();
//       },
//       onLongPressDown: (details) {
//         _scaleDown();
//       },
//       onLongPressEnd: (details) {
//         _scaleUp();
//       },
//       child: AnimatedScale(
//         scale: _scale,
//         duration: const Duration(milliseconds: 100),
//         curve: Curves.easeOut,
//         child: widget.child,
//       ),
//     );
//   }
// }
