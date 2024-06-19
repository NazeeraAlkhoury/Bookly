import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: AppDimensions.p15(context)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.r12(context)),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.fill,
            )),
        //  Container(
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(AppDimensions.r12(context)),
        //     image: const DecorationImage(
        //       image: AssetImage(
        //         AppAssets.testImage,
        //       ),
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
