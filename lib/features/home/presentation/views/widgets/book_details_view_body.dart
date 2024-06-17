import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_sections.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.p20(context)),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const CustomBookDetailsAppBar(),
                    SizedBox(
                      height: AppDimensions.h30(context),
                    ),
                    const BookDetailsSection(),
                    SizedBox(
                      height: AppDimensions.h37(context),
                    ),
                    const CustomBookActions(),
                    Expanded(
                      child: SizedBox(
                        height: AppDimensions.h50(context),
                      ),
                    ),
                    const SimillerBooksSection(),
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
