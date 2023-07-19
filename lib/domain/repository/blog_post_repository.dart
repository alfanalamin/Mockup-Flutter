
import 'package:either_dart/either.dart';
import 'package:flutter_application_1/common/failure.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:flutter_application_1/data/remote/blog_post_remote_data_source.dart';

abstract class BlogPostRepository {
  Future<Either<Failure, Query$blogPosts$blogPosts?>>
  getPost();
}

class BlogPostRepositoryImpl implements BlogPostRepository {
  final BlogPostRemoteDataSource remoteDataSource;

  BlogPostRepositoryImpl({
      required this.remoteDataSource,
    });

  @override
  Future<Either<Failure, Query$blogPosts$blogPosts?>>
  getPost() async {
    try {
      final result = await remoteDataSource.getPost();
      return Right(result);
    } on RequestFailure catch (e) {
      return Left(e);
    }
  }
}
