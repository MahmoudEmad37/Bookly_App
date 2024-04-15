import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDatasource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks();
}
