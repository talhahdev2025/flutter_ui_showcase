import 'package:flutter/material.dart';
import 'package:dog_app/core/constants/app_colors.dart';
import 'package:dog_app/core/constants/app_radius.dart';
import 'package:dog_app/core/constants/app_insects.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({
    required this.iconData,
    this.backgroundColor = Colors.white,
    this.iconColor = AppColors.extralightGrey,
  });

  IconData iconData;
  Color? backgroundColor;
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppInsets.allSm,
      decoration: BoxDecoration(
        borderRadius: AppRadius.medium,
        border: Border.all(color: AppColors.grey),
        color: backgroundColor,
      ),
      child: Icon(iconData, color: iconColor),
    );
  }
}
