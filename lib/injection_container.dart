import 'package:bookly/core/api/api_services.dart';
import 'package:bookly/features/home/data/datasource/home_local_datasource/home_local_datasource_impl.dart';
import 'package:bookly/features/home/data/datasource/home_remote_datasource/home_remote_datasource_impl.dart';
import 'package:bookly/features/home/data/repository/home_repo_impl.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:bookly/features/home/domain/usecases/fetch_featured_books_usecase.dart';
import 'package:bookly/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initDi() async {
  getIt.registerSingleton<ApiService>(ApiService((Dio())));

  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataSourceImpl()));

  getIt.registerSingleton<FetchFeaturedBooksUseCase>(
      FetchFeaturedBooksUseCase(getIt.get<HomeRepo>()));

  getIt.registerSingleton<FetchNewestdBooksUseCase>(
      FetchNewestdBooksUseCase(getIt.get<HomeRepo>()));
}
