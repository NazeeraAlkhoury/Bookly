import 'package:bookly/features/home/presentation/views/widgets/custom_books_listview.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_title_home_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHomeAppBar(),
        CustomBooksListView(),
        CustomTitleHomeText(),
        // Row(
        //   children:[

        //   ],
        // ),
      ],
    );
  }
}
