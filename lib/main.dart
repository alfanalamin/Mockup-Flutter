import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/remote/blog_post_remote_data_source.dart';
import 'package:flutter_application_1/domain/repository/blog_post_repository.dart';
import 'package:flutter_application_1/injection.dart';
import 'package:flutter_application_1/presentation/page/post_screen.dart';
import 'package:flutter_application_1/presentation/provider/blog_post_provider.dart';
import 'package:flutter_application_1/domain/usecase/home/get_blog_post.dart';
import 'package:provider/provider.dart';
import 'package:graphql/client.dart';

void main() {
  init('dev');
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BlogPostProvider(
        getPost: GetBlogPost(
          BlogPostRepositoryImpl(
            remoteDataSource: BlogPostRemoteDataSourceImpl(
              graphQLClient: locator<GraphQLClient>(),
            ),
          ),
        ),
      ),
      child: MaterialApp(
        title: 'Blog Post App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlogPostScreen(),
      ),
    );
  }
}
