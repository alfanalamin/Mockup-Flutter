import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/failure.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:flutter_application_1/common/state_enum.dart';
import 'package:flutter_application_1/domain/usecase/home/get_blog_post.dart';

class BlogPostProvider extends ChangeNotifier {
  Query$blogPosts$blogPosts? _postsData;
  Query$blogPosts$blogPosts? get postsData => _postsData;

  RequestState _postState = RequestState.Empty;
  RequestState get postState => _postState;

  RequestFailure? _postFailure;
  RequestFailure? get postFailure => _postFailure;

  BlogPostProvider({
    required this.getPost,
  });

  final GetBlogPost getPost;

  Future<void> doGetPost() async {
    _postState = RequestState.Loading;
    notifyListeners();

    final result = await getPost.execute();
    result.fold(
      (failure) {
      _postState = RequestState.Error;
      _postFailure = failure as RequestFailure?;
      notifyListeners();
    },
    (result) {
      _postState = RequestState.Loaded;
      _postsData = result;
      notifyListeners();
    });
  }
}