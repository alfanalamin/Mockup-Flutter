import 'package:flutter_application_1/common/app_shared_preferences.dart';
import 'package:flutter_application_1/common/configs.dart';
import 'package:flutter_application_1/common/graphql/graphql_configuration.dart';
import 'package:flutter_application_1/data/remote/blog_post_remote_data_source.dart';
import 'package:flutter_application_1/domain/repository/blog_post_repository.dart';
import 'package:flutter_application_1/domain/usecase/home/get_blog_post.dart';
import 'package:flutter_application_1/presentation/provider/blog_post_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;
late String _flavor;

void init(String flavor) {
  _flavor = flavor;
  locator.allowReassignment = true;
  locator.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });
  locator.registerSingleton<AppSharedPreferences>(AppSharedPreferences());

  // Provider
  locator.registerFactory(() => BlogPostProvider(
        getPost: locator<GetBlogPost>(),
      ));

  // Usecase
  locator.registerLazySingleton<GetBlogPost>(
      () => GetBlogPost(locator<BlogPostRepository>()));

  // Repository
  locator.registerLazySingleton<BlogPostRepository>(
    () => BlogPostRepositoryImpl(
      remoteDataSource: locator<BlogPostRemoteDataSource>(),
    ),
  );

  // Data Source
  locator.registerLazySingleton<BlogPostRemoteDataSource>(
    () => BlogPostRemoteDataSourceImpl(
      graphQLClient: locator<GraphQLClient>(),
    ),
  );

  // External
  locator.registerLazySingletonAsync<GraphQLClient>(() async {
    final config = GraphQLConfiguration();
    final client = await config.getClient(_flavor);
    return client;
  });

  locator.registerLazySingleton<Configs>(() => Configs());
}

void resetExternal() {
  locator.unregister<GraphQLClient>();
  locator.registerLazySingletonAsync<GraphQLClient>(() async {
    final config = GraphQLConfiguration();
    final client = await config.getClient(_flavor);
    return client;
  });
}
