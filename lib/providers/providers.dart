import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:daily_hack/apis/hacker_news_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:daily_hack/models/news.dart';

part 'providers.g.dart';

@riverpod
Dio dio(Ref ref) {
  return Dio();
}

@riverpod
HackerNewsApi hackerNewsApi(Ref ref) {
  return HackerNewsApi(ref.watch(dioProvider));
}

@riverpod
Future<List<int>> newsIds(Ref ref) async {
  final api = ref.watch(hackerNewsApiProvider);
  return api.getNews();
}

@riverpod
Future<Story> story(Ref ref, {required int id}) async {
  final api = ref.watch(hackerNewsApiProvider);
  return api.getNewsByID(id: id);
}

@riverpod
Future<List<Story>> news(Ref ref) async {
  final ids = await ref.watch(newsIdsProvider.future);
  final futures = ids.map((id) => ref.watch(storyProvider(id: id).future));
  return Future.wait(futures);
}

@riverpod
Future<Author> author(Ref ref, {required String id}) async {
  final api = ref.watch(hackerNewsApiProvider);
  return api.getAuthorByID(id: id);
}

@riverpod
Future<List<Story>> authorPosts(Ref ref,
    {required String id, int page = 0, int limit = 20}) async {
  final author = await ref.watch(authorProvider(id: id).future);
  final start = page * limit;
  final end = (start + limit).clamp(0, author.submitted.length);
  final subset = author.submitted.sublist(start, end);

  final futures = subset.map((id) => ref.watch(storyProvider(id: id).future));

  final stories = await Future.wait(futures);

  final filteredStories = stories
      .where((story) =>
          story.type == "story" &&
          story.deleted == false &&
          story.dead == false)
      .toList();

  return filteredStories;
}
