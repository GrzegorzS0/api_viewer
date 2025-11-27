// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repoSearchHash() => r'846ef25835fbda9949867b2721af7a2d1d37c3df';

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

abstract class _$RepoSearch
    extends BuildlessAutoDisposeAsyncNotifier<SearchResult?> {
  late final SearchData? searchData;

  FutureOr<SearchResult?> build(SearchData? searchData);
}

/// See also [RepoSearch].
@ProviderFor(RepoSearch)
const repoSearchProvider = RepoSearchFamily();

/// See also [RepoSearch].
class RepoSearchFamily extends Family<AsyncValue<SearchResult?>> {
  /// See also [RepoSearch].
  const RepoSearchFamily();

  /// See also [RepoSearch].
  RepoSearchProvider call(SearchData? searchData) {
    return RepoSearchProvider(searchData);
  }

  @override
  RepoSearchProvider getProviderOverride(
    covariant RepoSearchProvider provider,
  ) {
    return call(provider.searchData);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repoSearchProvider';
}

/// See also [RepoSearch].
class RepoSearchProvider
    extends AutoDisposeAsyncNotifierProviderImpl<RepoSearch, SearchResult?> {
  /// See also [RepoSearch].
  RepoSearchProvider(SearchData? searchData)
    : this._internal(
        () => RepoSearch()..searchData = searchData,
        from: repoSearchProvider,
        name: r'repoSearchProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$repoSearchHash,
        dependencies: RepoSearchFamily._dependencies,
        allTransitiveDependencies: RepoSearchFamily._allTransitiveDependencies,
        searchData: searchData,
      );

  RepoSearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchData,
  }) : super.internal();

  final SearchData? searchData;

  @override
  FutureOr<SearchResult?> runNotifierBuild(covariant RepoSearch notifier) {
    return notifier.build(searchData);
  }

  @override
  Override overrideWith(RepoSearch Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepoSearchProvider._internal(
        () => create()..searchData = searchData,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchData: searchData,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RepoSearch, SearchResult?>
  createElement() {
    return _RepoSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoSearchProvider && other.searchData == searchData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchData.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RepoSearchRef on AutoDisposeAsyncNotifierProviderRef<SearchResult?> {
  /// The parameter `searchData` of this provider.
  SearchData? get searchData;
}

class _RepoSearchProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RepoSearch, SearchResult?>
    with RepoSearchRef {
  _RepoSearchProviderElement(super.provider);

  @override
  SearchData? get searchData => (origin as RepoSearchProvider).searchData;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
