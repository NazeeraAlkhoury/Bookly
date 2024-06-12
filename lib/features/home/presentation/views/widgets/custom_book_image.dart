import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_dimensions.dart';

import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: AppDimensions.p15(context)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(AppDimensions.r12(context)),
            image: const DecorationImage(
              image: AssetImage(
                AppAssets.testImage,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
