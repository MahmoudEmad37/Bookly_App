import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/datasource/home_local_datasource/home_local_datasource.dart';
import 'package:bookly/features/home/data/datasource/home_remote_datasource/home_remote_datasource.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0}) async {
    List<BookEntity> booksList;
    try {
      booksList =
          homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      booksList =
          await homeRemoteDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks(
      {int pageNumber = 0}) async {
    List<BookEntity> booksList;
    try {
      booksList = homeLocalDataSource.fetchNewestBooks(pageNumber: pageNumber);
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      booksList =
          await homeRemoteDataSource.fetchNewestBooks(pageNumber: pageNumber);
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
