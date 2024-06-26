import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppDimensions.p5(context),
        bottom: AppDimensions.p10(context),
        left: AppDimensions.p20(context),
        right: AppDimensions.p20(context),
      ),
      child: Row(
        children: [
          Image.asset(
            AppAssets.logo,
            height: AppDimensions.h18(context),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: AppDimensions.h20(context),
            ),
          ),
        ],
      ),
    );
  }
}
