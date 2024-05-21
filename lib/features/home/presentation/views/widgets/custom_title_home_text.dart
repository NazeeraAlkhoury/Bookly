import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomTitleHomeText extends StatelessWidget {
  const CustomTitleHomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Best selles',
      style: AppStyles.textStyle18,
    );
  }
}
