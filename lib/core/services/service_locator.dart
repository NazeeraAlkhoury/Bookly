import 'package:bookly/core/services/api_services.dart';
import 'package:bookly/features/home/data/repos/home_repository.dart';
import 'package:bookly/features/home/data/repos/home_repository_imp.dart';
import 'package:bookly/features/home/presentation/view_models/books_cubit/books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/similler_books_cubit/similler_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void setup() {
    //cubite

    getIt.registerFactory(() => BooksCubit(getIt()));
    getIt.registerFactory(() => NewestBooksCubit(getIt()));
    getIt.registerFactory(() => SimillerBooksCubit(getIt()));

    //dio && api
    getIt.registerLazySingleton<Dio>(() => Dio(BaseOptions(
          receiveDataWhenStatusError: true,
        )));

    getIt.registerLazySingleton<ApiServices>(() => ApiServices(getIt()));

    // Repository
    getIt.registerLazySingleton<HomeReopsitory>(
        () => HomeRepositoryImp(getIt()));
  }
}
