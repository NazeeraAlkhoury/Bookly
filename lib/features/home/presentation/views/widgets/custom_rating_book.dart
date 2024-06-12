import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingBook extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const CustomRatingBook({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: AppDimensions.w14(context),
          color: AppColors.ratingIconColor,
        ),
        SizedBox(
          width: AppDimensions.w7(context),
        ),
        Text(
          '4.8',
          style: AppStyles.textStyle16(context),
        ),
        SizedBox(
          width: AppDimensions.w5(context),
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '(255)',
            style: AppStyles.textStyle14(context).copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
