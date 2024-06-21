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

      return Right(BookModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, BookModel>> getNewestBooks() async {
    try {
      var response = await _apiServices.getData(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

      return Right(BookModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, BookModel>> getSimillerBooks() async {
    try {
      var response = await _apiServices.getData(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');

      return Right(BookModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
