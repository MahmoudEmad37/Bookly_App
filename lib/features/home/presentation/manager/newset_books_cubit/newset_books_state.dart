part of 'newset_books_cubit.dart';

sealed class NewsetBooksState {}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksFailure extends NewsetBooksState {
  final String message;

  NewsetBooksFailure(this.message);
}

final class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookEntity> books;

  NewsetBooksSuccess(this.books);
}
