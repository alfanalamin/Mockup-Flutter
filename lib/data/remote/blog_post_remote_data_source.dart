import 'package:flutter_application_1/common/graphql/graphql_util.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:graphql/client.dart';
import 'package:get_it/get_it.dart';
import 'dart:async';
abstract class BlogPostRemoteDataSource {
  Future<Query$blogPosts$blogPosts?> getPost();
}

// class BlogPostRemoteDataSourceImpl implements BlogPostRemoteDataSource {
//   BlogPostRemoteDataSourceImpl();

//   @override
// //   Future<Query$blogPosts$blogPosts?> getPost() async {
// //     final result = await GetIt.I<GraphQLClient>().query$blogPosts(
// //         Options$Query$blogPosts(fetchPolicy: FetchPolicy.networkOnly));
// //     checkError(result);
// //     return result.parsedData?.blogPosts;
// //   }
// // }
class BlogPostRemoteDataSourceImpl implements BlogPostRemoteDataSource {
  BlogPostRemoteDataSourceImpl();

  Future<Query$blogPosts$blogPosts?> getPost() async {
    final graphQLClient = GetIt.I<GraphQLClient>();

    final completer = Completer<QueryResult>();
    final queryOptions = QueryOptions(
      document: Options$Query$blogPosts().document, // Use 'document' property
      fetchPolicy: FetchPolicy.networkOnly,
    );

    graphQLClient.query(queryOptions).then((result) {
      completer.complete(result);
    }).catchError((error) {
      completer.completeError(error);
    });

    final result = await completer.future;
    checkError(result);

    // Parse the response data
    return _parseBlogPostsResponse(result.data);
  }

  Query$blogPosts$blogPosts? _parseBlogPostsResponse(
      Map<String, dynamic>? responseData) {
    if (responseData != null) {
      // Check if the 'blogPosts' key exists and is not null in the responseData
      if (responseData['blogPosts'] != null) {
        // Assuming Query$blogPosts$blogPosts.fromJson is a generated constructor from the query class.
        return Query$blogPosts$blogPosts.fromJson(responseData['blogPosts']);
      } else {
        // Handle the case when 'blogPosts' key is null or missing in the response
        print(
            'Error: blogPosts key is missing or null in the GraphQL response.');
        return null;
      }
    } else {
      // Handle the case when responseData is null
      print('Error: GraphQL response data is null.');
      return null;
    }
  }
}
