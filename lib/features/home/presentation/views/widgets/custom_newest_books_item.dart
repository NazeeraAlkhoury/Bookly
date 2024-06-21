import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_data_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_rating_book.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNewestBooksItem extends StatelessWidget {
  final BookDataModel bookDataModel;
  const CustomNewestBooksItem({
    super.key,
    required this.bookDataModel,
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
                child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.r12(context)),
                    child: CachedNetworkImage(
                      imageUrl: bookDataModel
                              .volumeInfo.imageLinksModels?.thumbnail ??
                          '',
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      fit: BoxFit.fill,
                    )),
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
                        bookDataModel.volumeInfo.title,
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
                      child: Text(bookDataModel.volumeInfo.authors[0],
                          style: AppStyles.textStyle14(context)),
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: AppStyles.textStyle20(context)
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        CustomRatingBook(
                          avarage: bookDataModel.volumeInfo.averageRating,
                          count: bookDataModel.volumeInfo.ratingsCount,
                        ),
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
