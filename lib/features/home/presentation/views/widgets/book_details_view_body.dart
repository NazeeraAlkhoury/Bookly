import 'package:bookly/core/utils/app_dimensions.dart';

import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.p20(context)),
          child: const Column(
            children: [
              BookDetailsSection(),
              SizedBox(
                height: 37,
              ),
              CustomBookActions(),
            ],
          ),
        ),
      ),
    );
  }
}
