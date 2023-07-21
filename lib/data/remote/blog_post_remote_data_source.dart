import 'dart:async';
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
    final graphQLClient = GetIt.I<GraphQLClient>();

    final queryOptions = QueryOptions(
      document: Options$Query$blogPosts().document,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    try {
      final result = await graphQLClient.query(queryOptions);
      if (result.hasException) {
        // Handle GraphQL query exceptions
        throw result.exception!;
      }
      return _parseBlogPostsResponse(result.data);
    } catch (error) {
      // Handle general exceptions
      print('Error: $error');
      return null;
    }
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