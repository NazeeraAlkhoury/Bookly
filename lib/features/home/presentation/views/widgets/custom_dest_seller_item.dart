import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_rating_book.dart';
import 'package:flutter/material.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: AppDimensions.p15(context),
        end: AppDimensions.p20(context),
        top: AppDimensions.p15(context),
      ),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: AppDimensions.h120(context),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.9 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                        BorderRadius.circular(AppDimensions.r8(context)),
                    image: const DecorationImage(
                      image: AssetImage(
                        AppAssets.testImage,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: AppDimensions.w30(context),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Harry Potter and the goblet of fire ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.textStyle20(context).copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),
                    Text('J.K , Rowling',
                        style: AppStyles.textStyle14(context)),
                    const CustomRatingBook(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
