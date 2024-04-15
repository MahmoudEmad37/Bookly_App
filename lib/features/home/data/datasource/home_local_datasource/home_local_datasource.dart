import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDatasource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}
