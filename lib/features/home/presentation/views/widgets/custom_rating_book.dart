import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingBook extends StatelessWidget {
  const CustomRatingBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 \$',
          style: AppStyles.textStyle20(context)
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
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
        )
      ],
    );
  }
}
