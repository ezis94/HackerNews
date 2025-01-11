import 'package:daily_hack/models/news.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'hacker_news_api.g.dart';

@RestApi(baseUrl: "https://hacker-news.firebaseio.com/")
abstract class HackerNewsApi {
  factory HackerNewsApi(Dio dio, {String baseUrl}) = _HackerNewsApi;

  @GET('/v0/topstories.json')
  Future<List<int>> getNews();

  @GET('/v0/item/{id}.json')
  Future<Story> getNewsByID({
    @Path('id') required int id,
  });

  @GET('/v0/user/{id}.json')
  Future<Author> getAuthorByID({
    @Path('id') required String id,
  });
}
