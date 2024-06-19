import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures({required this.errMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'badCertificate with api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode,
            dioException.response!.data['error']['message']);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, String data) {
    if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request was not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'There is a problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: data);
    } else {
      return ServerFailure(errMessage: 'There was an error , please try again');
    }
  }
}
