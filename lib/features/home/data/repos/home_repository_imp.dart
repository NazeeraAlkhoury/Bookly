import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/services/api_services.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImp implements HomeReopsitory {
  final ApiServices _apiServices;

  HomeRepositoryImp(this._apiServices);

  @override
  Future<Either<Failures, BookModel>> getBooks() async {
    try {
      var response = await _apiServices.getData(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      print(BookModel.fromJson(response).toString());

      return Right(BookModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
