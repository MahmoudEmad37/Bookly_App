import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class HomeRemoteDatasource {
  Future<List<BookModel>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchNewestBooks();
}
