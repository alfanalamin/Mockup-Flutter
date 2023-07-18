import 'package:either_dart/either.dart';
import 'package:flutter_application_1/common/failure.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:flutter_application_1/domain/repository/blog_post_repository.dart';

class GetBlogPost {
  final BlogPostRepository repository;

  GetBlogPost(this.repository);

  Future<Either<Failure, Query$blogPosts$blogPosts?>> execute()  {
    return repository.getPost();
  }
}
