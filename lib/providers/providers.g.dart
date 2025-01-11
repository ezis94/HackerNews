// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'a03da399b44b3740dc4fcfc6716203041d66ff01';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$hackerNewsApiHash() => r'ea28d1fdd6e6a3eccd3aa8bf9d67049bf57bbbaf';

/// See also [hackerNewsApi].
@ProviderFor(hackerNewsApi)
final hackerNewsApiProvider = AutoDisposeProvider<HackerNewsApi>.internal(
  hackerNewsApi,
  name: r'hackerNewsApiProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$hackerNewsApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef HackerNewsApiRef = AutoDisposeProviderRef<HackerNewsApi>;
String _$newsIdsHash() => r'5d037d3b1e9de7e5bf552ff84b438b9ff2814ba5';

/// See also [newsIds].
@ProviderFor(newsIds)
final newsIdsProvider = AutoDisposeFutureProvider<List<int>>.internal(
  newsIds,
  name: r'newsIdsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newsIdsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NewsIdsRef = AutoDisposeFutureProviderRef<List<int>>;
String _$storyHash() => r'763505ac59948176a8a8d3ffd2b885beb8649378';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [story].
@ProviderFor(story)
const storyProvider = StoryFamily();

/// See also [story].
class StoryFamily extends Family<AsyncValue<Story>> {
  /// See also [story].
  const StoryFamily();

  /// See also [story].
  StoryProvider call({
    required int id,
  }) {
    return StoryProvider(
      id: id,
    );
  }

  @override
  StoryProvider getProviderOverride(
    covariant StoryProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'storyProvider';
}

/// See also [story].
class StoryProvider extends AutoDisposeFutureProvider<Story> {
  /// See also [story].
  StoryProvider({
    required int id,
  }) : this._internal(
          (ref) => story(
            ref as StoryRef,
            id: id,
          ),
          from: storyProvider,
          name: r'storyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storyHash,
          dependencies: StoryFamily._dependencies,
          allTransitiveDependencies: StoryFamily._allTransitiveDependencies,
          id: id,
        );

  StoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Story> Function(StoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StoryProvider._internal(
        (ref) => create(ref as StoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Story> createElement() {
    return _StoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StoryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StoryRef on AutoDisposeFutureProviderRef<Story> {
  /// The parameter `id` of this provider.
  int get id;
}

class _StoryProviderElement extends AutoDisposeFutureProviderElement<Story>
    with StoryRef {
  _StoryProviderElement(super.provider);

  @override
  int get id => (origin as StoryProvider).id;
}

String _$newsHash() => r'33968dc8dc3ac5273d69fc6e356ad35c78de4ce5';

/// See also [news].
@ProviderFor(news)
final newsProvider = AutoDisposeFutureProvider<List<Story>>.internal(
  news,
  name: r'newsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NewsRef = AutoDisposeFutureProviderRef<List<Story>>;
String _$authorHash() => r'1f95bb82b55e8fc027065af5bb53c2d300d630ea';

/// See also [author].
@ProviderFor(author)
const authorProvider = AuthorFamily();

/// See also [author].
class AuthorFamily extends Family<AsyncValue<Author>> {
  /// See also [author].
  const AuthorFamily();

  /// See also [author].
  AuthorProvider call({
    required String id,
  }) {
    return AuthorProvider(
      id: id,
    );
  }

  @override
  AuthorProvider getProviderOverride(
    covariant AuthorProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'authorProvider';
}

/// See also [author].
class AuthorProvider extends AutoDisposeFutureProvider<Author> {
  /// See also [author].
  AuthorProvider({
    required String id,
  }) : this._internal(
          (ref) => author(
            ref as AuthorRef,
            id: id,
          ),
          from: authorProvider,
          name: r'authorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authorHash,
          dependencies: AuthorFamily._dependencies,
          allTransitiveDependencies: AuthorFamily._allTransitiveDependencies,
          id: id,
        );

  AuthorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Author> Function(AuthorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AuthorProvider._internal(
        (ref) => create(ref as AuthorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Author> createElement() {
    return _AuthorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthorProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AuthorRef on AutoDisposeFutureProviderRef<Author> {
  /// The parameter `id` of this provider.
  String get id;
}

class _AuthorProviderElement extends AutoDisposeFutureProviderElement<Author>
    with AuthorRef {
  _AuthorProviderElement(super.provider);

  @override
  String get id => (origin as AuthorProvider).id;
}

String _$authorPostsHash() => r'7ca377aa051924d9f5cd6b36baef53bc76c1fd41';

/// See also [authorPosts].
@ProviderFor(authorPosts)
const authorPostsProvider = AuthorPostsFamily();

/// See also [authorPosts].
class AuthorPostsFamily extends Family<AsyncValue<List<Story>>> {
  /// See also [authorPosts].
  const AuthorPostsFamily();

  /// See also [authorPosts].
  AuthorPostsProvider call({
    required String id,
    int page = 0,
    int limit = 20,
  }) {
    return AuthorPostsProvider(
      id: id,
      page: page,
      limit: limit,
    );
  }

  @override
  AuthorPostsProvider getProviderOverride(
    covariant AuthorPostsProvider provider,
  ) {
    return call(
      id: provider.id,
      page: provider.page,
      limit: provider.limit,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'authorPostsProvider';
}

/// See also [authorPosts].
class AuthorPostsProvider extends AutoDisposeFutureProvider<List<Story>> {
  /// See also [authorPosts].
  AuthorPostsProvider({
    required String id,
    int page = 0,
    int limit = 20,
  }) : this._internal(
          (ref) => authorPosts(
            ref as AuthorPostsRef,
            id: id,
            page: page,
            limit: limit,
          ),
          from: authorPostsProvider,
          name: r'authorPostsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authorPostsHash,
          dependencies: AuthorPostsFamily._dependencies,
          allTransitiveDependencies:
              AuthorPostsFamily._allTransitiveDependencies,
          id: id,
          page: page,
          limit: limit,
        );

  AuthorPostsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.page,
    required this.limit,
  }) : super.internal();

  final String id;
  final int page;
  final int limit;

  @override
  Override overrideWith(
    FutureOr<List<Story>> Function(AuthorPostsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AuthorPostsProvider._internal(
        (ref) => create(ref as AuthorPostsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        page: page,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Story>> createElement() {
    return _AuthorPostsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthorPostsProvider &&
        other.id == id &&
        other.page == page &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AuthorPostsRef on AutoDisposeFutureProviderRef<List<Story>> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _AuthorPostsProviderElement
    extends AutoDisposeFutureProviderElement<List<Story>> with AuthorPostsRef {
  _AuthorPostsProviderElement(super.provider);

  @override
  String get id => (origin as AuthorPostsProvider).id;
  @override
  int get page => (origin as AuthorPostsProvider).page;
  @override
  int get limit => (origin as AuthorPostsProvider).limit;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
