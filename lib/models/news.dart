import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.g.dart';
part 'news.freezed.dart';

@freezed
class Story with _$Story {
  factory Story({
    required int id,
    @Default("") String by,
    @Default("") String type,
    @Default(-1) int time,
    @Default("") String title,
    @Default("") String url,
    @Default(false) bool dead,
    @Default(false) bool deleted,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}

@freezed
class Author with _$Author {
  factory Author({
    required String id,
    required int created,
    required int karma,
    @Default("") String about,
    @Default(<int>[]) List<int> submitted,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
