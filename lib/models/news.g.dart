// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryImpl _$$StoryImplFromJson(Map<String, dynamic> json) => _$StoryImpl(
      id: (json['id'] as num).toInt(),
      by: json['by'] as String? ?? "",
      type: json['type'] as String? ?? "",
      time: (json['time'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? "",
      url: json['url'] as String? ?? "",
      dead: json['dead'] as bool? ?? false,
      deleted: json['deleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$StoryImplToJson(_$StoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'by': instance.by,
      'type': instance.type,
      'time': instance.time,
      'title': instance.title,
      'url': instance.url,
      'dead': instance.dead,
      'deleted': instance.deleted,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      id: json['id'] as String,
      created: (json['created'] as num).toInt(),
      karma: (json['karma'] as num).toInt(),
      about: json['about'] as String? ?? "",
      submitted: (json['submitted'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'karma': instance.karma,
      'about': instance.about,
      'submitted': instance.submitted,
    };
