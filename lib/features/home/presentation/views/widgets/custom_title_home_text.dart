import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomTitleHomeText extends StatelessWidget {
  const CustomTitleHomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: AppDimensions.p15(context),
          top: AppDimensions.p15(context),
          bottom: AppDimensions.p15(context)),
      child: const Text(
        'Best selles',
        style: AppStyles.textStyle18,
      ),
    );
  }
}
