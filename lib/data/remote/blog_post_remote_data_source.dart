import 'package:flutter_application_1/common/graphql/graphql_util.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:graphql/client.dart';
import 'package:get_it/get_it.dart';
import 'dart:async';
abstract class BlogPostRemoteDataSource {
  Future<Query$blogPosts$blogPosts?> getPost();
}

class BlogPostRemoteDataSourceImpl implements BlogPostRemoteDataSource {
  BlogPostRemoteDataSourceImpl();

  @override
  Future<Query$blogPosts$blogPosts?> getPost() async {
    final result = await GetIt.I<GraphQLClient>().query$blogPosts(
        Options$Query$blogPosts(fetchPolicy: FetchPolicy.networkOnly));
    checkError(result);
    return result.parsedData?.blogPosts;
  }
}


