import 'package:flutter_application_1/common/graphql/graphql_util.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:graphql/client.dart';
import 'package:get_it/get_it.dart';

abstract class BlogPostRemoteDataSource {
  Future<Query$blogPosts$blogPosts?> getPost();
}

class BlogPostRemoteDataSourceImpl implements BlogPostRemoteDataSource {
  BlogPostRemoteDataSourceImpl();

  @override
  Future<Query$blogPosts$blogPosts?> getPost() async {
    final QueryOptions options = QueryOptions(
      document: documentNodeQueryblogPosts,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final QueryResult result =
        await GetIt.instance<GraphQLClient>().query(options);
    checkError(result);
    return result.data != null
        ? Query$blogPosts$blogPosts.fromJson(result.data!)
        : null;
  }
}
