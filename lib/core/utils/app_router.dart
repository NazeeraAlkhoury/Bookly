import 'package:bookly/core/services/api_services.dart';
import 'package:bookly/features/home/data/repos/home_repository_imp.dart';
import 'package:bookly/features/home/presentation/view_models/books_cubit/books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';

import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashRoute = '/';
  static const String homeViewRoute = '/homeView';
  static const String bookDetailsViewRoute = '/bookDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => BlocProvider(
          create: (context) => BooksCubit(
            HomeRepositoryImp(
              ApiServices(
                Dio(),
              ),
            ),
          )..getBooks(),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: bookDetailsViewRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
