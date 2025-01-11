// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
mixin _$Story {
  int get id => throw _privateConstructorUsedError;
  String get by => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get dead => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Serializes this Story to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res, Story>;
  @useResult
  $Res call(
      {int id,
      String by,
      String type,
      int time,
      String title,
      String url,
      bool dead,
      bool deleted});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res, $Val extends Story>
    implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? by = null,
    Object? type = null,
    Object? time = null,
    Object? title = null,
    Object? url = null,
    Object? dead = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      by: null == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      dead: null == dead
          ? _value.dead
          : dead // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryImplCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$StoryImplCopyWith(
          _$StoryImpl value, $Res Function(_$StoryImpl) then) =
      __$$StoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String by,
      String type,
      int time,
      String title,
      String url,
      bool dead,
      bool deleted});
}

/// @nodoc
class __$$StoryImplCopyWithImpl<$Res>
    extends _$StoryCopyWithImpl<$Res, _$StoryImpl>
    implements _$$StoryImplCopyWith<$Res> {
  __$$StoryImplCopyWithImpl(
      _$StoryImpl _value, $Res Function(_$StoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? by = null,
    Object? type = null,
    Object? time = null,
    Object? title = null,
    Object? url = null,
    Object? dead = null,
    Object? deleted = null,
  }) {
    return _then(_$StoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      by: null == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      dead: null == dead
          ? _value.dead
          : dead // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryImpl implements _Story {
  _$StoryImpl(
      {required this.id,
      this.by = "",
      this.type = "",
      this.time = -1,
      this.title = "",
      this.url = "",
      this.dead = false,
      this.deleted = false});

  factory _$StoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String by;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int time;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final bool dead;
  @override
  @JsonKey()
  final bool deleted;

  @override
  String toString() {
    return 'Story(id: $id, by: $by, type: $type, time: $time, title: $title, url: $url, dead: $dead, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.by, by) || other.by == by) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.dead, dead) || other.dead == dead) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, by, type, time, title, url, dead, deleted);

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      __$$StoryImplCopyWithImpl<_$StoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryImplToJson(
      this,
    );
  }
}

abstract class _Story implements Story {
  factory _Story(
      {required final int id,
      final String by,
      final String type,
      final int time,
      final String title,
      final String url,
      final bool dead,
      final bool deleted}) = _$StoryImpl;

  factory _Story.fromJson(Map<String, dynamic> json) = _$StoryImpl.fromJson;

  @override
  int get id;
  @override
  String get by;
  @override
  String get type;
  @override
  int get time;
  @override
  String get title;
  @override
  String get url;
  @override
  bool get dead;
  @override
  bool get deleted;

  /// Create a copy of Story
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  String get id => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  int get karma => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  List<int> get submitted => throw _privateConstructorUsedError;

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call(
      {String id, int created, int karma, String about, List<int> submitted});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? karma = null,
    Object? about = null,
    Object? submitted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      karma: null == karma
          ? _value.karma
          : karma // ignore: cast_nullable_to_non_nullable
              as int,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, int created, int karma, String about, List<int> submitted});
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = null,
    Object? karma = null,
    Object? about = null,
    Object? submitted = null,
  }) {
    return _then(_$AuthorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      karma: null == karma
          ? _value.karma
          : karma // ignore: cast_nullable_to_non_nullable
              as int,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value._submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl implements _Author {
  _$AuthorImpl(
      {required this.id,
      required this.created,
      required this.karma,
      this.about = "",
      final List<int> submitted = const <int>[]})
      : _submitted = submitted;

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  final String id;
  @override
  final int created;
  @override
  final int karma;
  @override
  @JsonKey()
  final String about;
  final List<int> _submitted;
  @override
  @JsonKey()
  List<int> get submitted {
    if (_submitted is EqualUnmodifiableListView) return _submitted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submitted);
  }

  @override
  String toString() {
    return 'Author(id: $id, created: $created, karma: $karma, about: $about, submitted: $submitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.karma, karma) || other.karma == karma) &&
            (identical(other.about, about) || other.about == about) &&
            const DeepCollectionEquality()
                .equals(other._submitted, _submitted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, created, karma, about,
      const DeepCollectionEquality().hash(_submitted));

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  factory _Author(
      {required final String id,
      required final int created,
      required final int karma,
      final String about,
      final List<int> submitted}) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  String get id;
  @override
  int get created;
  @override
  int get karma;
  @override
  String get about;
  @override
  List<int> get submitted;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
