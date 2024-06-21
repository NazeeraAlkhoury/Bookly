import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomBookActions extends StatelessWidget {
  const CustomBookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.p15(context)),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: AppColors.backgroundButtonWhiteColor,
              textColor: Colors.black,
              text: 'Free',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppDimensions.r8(context)),
                bottomLeft: Radius.circular(AppDimensions.r8(context)),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: AppColors.backgroundButtonColor,
              textColor: Colors.white,
              text: 'Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(AppDimensions.r8(context)),
                bottomRight: Radius.circular(AppDimensions.r8(context)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
