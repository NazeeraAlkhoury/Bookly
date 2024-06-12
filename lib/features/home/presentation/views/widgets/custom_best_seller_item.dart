import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_rating_book.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookDetailsViewRoute);
        },
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: AppDimensions.width(context) * .65,
                      child: Text(
                        'Harry Potter and the goblet of fire ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.textStyle20(context).copyWith(
                          fontFamily: kGtSectraFine,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppDimensions.h3(context),
                      ),
                      child: Text('J.K , Rowling',
                          style: AppStyles.textStyle14(context)),
                    ),
                    Row(
                      children: [
                        Text(
                          '19.99 \$',
                          style: AppStyles.textStyle20(context)
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const CustomRatingBook(),
                      ],
                    ),
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
