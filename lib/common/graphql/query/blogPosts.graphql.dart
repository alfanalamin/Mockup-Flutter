import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;


class Query$blogPosts {
  Query$blogPosts({
    required this.blogPosts,
    this.$__typename = 'Query',
  });

  factory Query$blogPosts.fromJson(Map<String, dynamic> json) {
    final l$blogPosts = json['blogPosts'];
    final l$$__typename = json['__typename'];
    return Query$blogPosts(
      blogPosts: Query$blogPosts$blogPosts.fromJson(
          (l$blogPosts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$blogPosts$blogPosts blogPosts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$blogPosts = blogPosts;
    _resultData['blogPosts'] = l$blogPosts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$blogPosts = blogPosts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$blogPosts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$blogPosts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$blogPosts = blogPosts;
    final lOther$blogPosts = other.blogPosts;
    if (l$blogPosts != lOther$blogPosts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$blogPosts on Query$blogPosts {
  CopyWith$Query$blogPosts<Query$blogPosts> get copyWith =>
      CopyWith$Query$blogPosts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$blogPosts<TRes> {
  factory CopyWith$Query$blogPosts(
    Query$blogPosts instance,
    TRes Function(Query$blogPosts) then,
  ) = _CopyWithImpl$Query$blogPosts;

  factory CopyWith$Query$blogPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$blogPosts;

  TRes call({
    Query$blogPosts$blogPosts? blogPosts,
    String? $__typename,
  });
  CopyWith$Query$blogPosts$blogPosts<TRes> get blogPosts;
}

class _CopyWithImpl$Query$blogPosts<TRes>
    implements CopyWith$Query$blogPosts<TRes> {
  _CopyWithImpl$Query$blogPosts(
    this._instance,
    this._then,
  );

  final Query$blogPosts _instance;

  final TRes Function(Query$blogPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blogPosts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$blogPosts(
        blogPosts: blogPosts == _undefined || blogPosts == null
            ? _instance.blogPosts
            : (blogPosts as Query$blogPosts$blogPosts),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$blogPosts$blogPosts<TRes> get blogPosts {
    final local$blogPosts = _instance.blogPosts;
    return CopyWith$Query$blogPosts$blogPosts(
        local$blogPosts, (e) => call(blogPosts: e));
  }
}

class _CopyWithStubImpl$Query$blogPosts<TRes>
    implements CopyWith$Query$blogPosts<TRes> {
  _CopyWithStubImpl$Query$blogPosts(this._res);

  TRes _res;

  call({
    Query$blogPosts$blogPosts? blogPosts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$blogPosts$blogPosts<TRes> get blogPosts =>
      CopyWith$Query$blogPosts$blogPosts.stub(_res);
}

const documentNodeQueryblogPosts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'blogPosts'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'blogPosts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: IntValueNode(value: '500'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'items'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

Query$blogPosts _parserFn$Query$blogPosts(
        Map<String, dynamic> data) =>
    Query$blogPosts.fromJson(data);

class Options$Query$blogPosts
    extends graphql.QueryOptions<Query$blogPosts> {
  Options$Query$blogPosts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryblogPosts,
          parserFn: _parserFn$Query$blogPosts,
        );
}

class WatchOptions$Query$blogPosts
    extends graphql.WatchQueryOptions<Query$blogPosts> {
  WatchOptions$Query$blogPosts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryblogPosts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$blogPosts,
        );
}

class FetchMoreOptions$Query$blogPosts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$blogPosts(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryblogPosts,
        );
}

extension ClientExtension$Query$blogPosts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$blogPosts>> query$blogPosts(
          [Options$Query$blogPosts? options]) async =>
      await this.query(options ?? Options$Query$blogPosts());
  graphql.ObservableQuery<Query$blogPosts> watchQuery$blogPosts(
          [WatchOptions$Query$blogPosts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$blogPosts());
  void writeQuery$blogPosts({
    required Query$blogPosts data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryblogPosts)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$blogPosts? readQuery$blogPosts({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryblogPosts)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$blogPosts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$blogPosts> useQuery$blogPosts(
        [Options$Query$blogPosts? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$blogPosts());
graphql.ObservableQuery<Query$blogPosts> useWatchQuery$blogPosts(
        [WatchOptions$Query$blogPosts? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$blogPosts());

class Query$blogPosts$Widget
    extends graphql_flutter.Query<Query$blogPosts> {
  Query$blogPosts$Widget({
    widgets.Key? key,
    Options$Query$blogPosts? options,
    required graphql_flutter.QueryBuilder<Query$blogPosts> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$blogPosts(),
          builder: builder,
        );
}
class Query$blogPosts$blogPosts {
  Query$blogPosts$blogPosts({
    required this.items,
    this.$__typename = 'BlogPostResSchema',
  });

  factory Query$blogPosts$blogPosts.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$blogPosts$blogPosts(
      items: (l$items as List<dynamic>)
          .map((e) => Query$blogPosts$blogPosts$items.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$blogPosts$blogPosts$items> items;

  final String $__typename;

  get length => null;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$blogPosts$blogPosts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$blogPosts$blogPosts
    on Query$blogPosts$blogPosts {
  CopyWith$Query$blogPosts$blogPosts<Query$blogPosts$blogPosts> get copyWith =>
      CopyWith$Query$blogPosts$blogPosts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$blogPosts$blogPosts<TRes> {
  factory CopyWith$Query$blogPosts$blogPosts(
    Query$blogPosts$blogPosts instance,
    TRes Function(Query$blogPosts$blogPosts) then,
  ) = _CopyWithImpl$Query$blogPosts$blogPosts;

  factory CopyWith$Query$blogPosts$blogPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$blogPosts$blogPosts;

  TRes call({
    List<Query$blogPosts$blogPosts$items>? items,
    String? $__typename,
  });
  TRes items(
      Iterable<Query$blogPosts$blogPosts$items> Function(
              Iterable<
                  CopyWith$Query$blogPosts$blogPosts$items<
                      Query$blogPosts$blogPosts$items>>)
          _fn);
}

class _CopyWithImpl$Query$blogPosts$blogPosts<TRes>
    implements CopyWith$Query$blogPosts$blogPosts<TRes> {
  _CopyWithImpl$Query$blogPosts$blogPosts(
    this._instance,
    this._then,
  );

  final Query$blogPosts$blogPosts _instance;

  final TRes Function(Query$blogPosts$blogPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$blogPosts$blogPosts(
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Query$blogPosts$blogPosts$items>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes items(
          Iterable<Query$blogPosts$blogPosts$items> Function(
                  Iterable<
                      CopyWith$Query$blogPosts$blogPosts$items<
                          Query$blogPosts$blogPosts$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items
              .map((e) => CopyWith$Query$blogPosts$blogPosts$items(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$blogPosts$blogPosts<TRes>
    implements CopyWith$Query$blogPosts$blogPosts<TRes> {
  _CopyWithStubImpl$Query$blogPosts$blogPosts(this._res);

  TRes _res;

  call({
    List<Query$blogPosts$blogPosts$items>? items,
    String? $__typename,
  }) =>
      _res;
  items(_fn) => _res;
}

class Query$blogPosts$blogPosts$items {
  Query$blogPosts$blogPosts$items({
    required this.id,
    this.title,
    this.$__typename = 'BlogPost',
  });

  factory Query$blogPosts$blogPosts$items.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$blogPosts$blogPosts$items(
      id: (l$id as String),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$blogPosts$blogPosts$items) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$blogPosts$blogPosts$items
    on Query$blogPosts$blogPosts$items {
  CopyWith$Query$blogPosts$blogPosts$items<Query$blogPosts$blogPosts$items>
      get copyWith => CopyWith$Query$blogPosts$blogPosts$items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$blogPosts$blogPosts$items<TRes> {
  factory CopyWith$Query$blogPosts$blogPosts$items(
    Query$blogPosts$blogPosts$items instance,
    TRes Function(Query$blogPosts$blogPosts$items) then,
  ) = _CopyWithImpl$Query$blogPosts$blogPosts$items;

  factory CopyWith$Query$blogPosts$blogPosts$items.stub(TRes res) =
      _CopyWithStubImpl$Query$blogPosts$blogPosts$items;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$blogPosts$blogPosts$items<TRes>
    implements CopyWith$Query$blogPosts$blogPosts$items<TRes> {
  _CopyWithImpl$Query$blogPosts$blogPosts$items(
    this._instance,
    this._then,
  );

  final Query$blogPosts$blogPosts$items _instance;

  final TRes Function(Query$blogPosts$blogPosts$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$blogPosts$blogPosts$items(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$blogPosts$blogPosts$items<TRes>
    implements CopyWith$Query$blogPosts$blogPosts$items<TRes> {
  _CopyWithStubImpl$Query$blogPosts$blogPosts$items(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}
