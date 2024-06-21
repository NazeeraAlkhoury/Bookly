part of 'similler_books_cubit.dart';

sealed class SimillerBooksState extends Equatable {
  const SimillerBooksState();

  @override
  List<Object> get props => [];
}

final class SimillerBooksInitial extends SimillerBooksState {}

final class SimillerBooksLoading extends SimillerBooksState {}

final class SimillerBooksError extends SimillerBooksState {
  final String errMessage;

  const SimillerBooksError(this.errMessage);
}

final class SimillerBooksSuccess extends SimillerBooksState {
  final BookModel books;

  const SimillerBooksSuccess(this.books);
}
