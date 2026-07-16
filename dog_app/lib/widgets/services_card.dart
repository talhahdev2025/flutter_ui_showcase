import 'package:dog_app/core/exports.dart';

class ServicesCard extends StatelessWidget {
  ServicesCard({
    required this.color,
    required this.text,
    this.imageUrl = AppImages.emptyImageSvg,
  });
  Color color;
  String text;
  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .spaceBetween,
      children: [
        Container(
          padding: AppInsets.allMd,
          margin: EdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            color: color,
            borderRadius: AppRadius.large,
            border: Border.all(color: AppColors.grey),
          ),
          child: SvgPicture.asset(imageUrl, fit: BoxFit.cover, height: 32),
        ),
        Text(text),
      ],
    );
  }
}
