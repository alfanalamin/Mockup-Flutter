import 'package:flutter_application_1/common/graphql/graphql_util.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:get_it/get_it.dart';


abstract class BlogPostRemoteDataSource {
  Future<Query$blogPosts$blogPosts?> getPost();
}

class BlogPostRemoteDataSourceImpl implements BlogPostRemoteDataSource {
  BlogPostRemoteDataSourceImpl({required GraphQLClient graphQLClient});

  @override
  Future<Query$blogPosts$blogPosts?> getPost() async {
    final result = await GetIt.instance<GraphQLClient>().query(
      QueryOptions(
        document: documentNodeQueryblogPosts,
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    checkError(result);
    final Map<String, dynamic>? data = result.data?['blogPosts'];
    if (data != null) {
      return Query$blogPosts$blogPosts.fromJson(data);
    }
    return null;
  }

  initialize() {}
}
