import 'package:flutter_application_1/common/app_shared_preferences.dart';
import 'package:flutter_application_1/common/configs.dart';
import 'package:flutter_application_1/common/dio.dart';
import 'package:flutter_application_1/common/graphql/graphql_configuration.dart';
import 'package:flutter_application_1/data/remote/blog_post_remote_data_source.dart';
import 'package:flutter_application_1/domain/repository/blog_post_repository.dart';
import 'package:flutter_application_1/domain/usecase/home/get_blog_post.dart';
import 'package:flutter_application_1/presentation/provider/blog_post_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

final locator = GetIt.instance;
late String _flavor;

void init(String flavor) {
  _flavor = flavor;
  locator.allowReassignment = true;

  locator.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance()
  );
  locator.registerLazySingleton<AppSharedPreferences>(
    () => AppSharedPreferences(preferences: locator()));

  // Provider
  locator.registerFactory(() => BlogPostProvider(
        getPost: locator()));

  // Usecase
  // locator.registerLazySingleton( () => GetBlogPost(locator()));
  locator
      .registerLazySingleton(() => GetBlogPost(locator<BlogPostRepository>()));

  // Repository
  // locator.registerLazySingleton<BlogPostRepository>(
  //   () => BlogPostRepositoryImpl(
  //     remoteDataSource: locator()),
  // );
  locator.registerLazySingleton<BlogPostRepository>(
    () => BlogPostRepositoryImpl(
        remoteDataSource: locator<BlogPostRemoteDataSource>()),
  );

  // Data Source
  locator.registerLazySingleton<BlogPostRemoteDataSource>(
    () => BlogPostRemoteDataSourceImpl(),
  );

  // External
  locator.registerLazySingletonAsync<GraphQLClient>(()
  => GraphQLConfiguration().getClient(flavor));

  locator.registerLazySingletonAsync<Dio>(() => DioClient().client(flavor));
  locator.registerLazySingleton(() => Configs(flavor));
}

void resetExternal() {
  locator.registerLazySingletonAsync<Dio>(() => DioClient().client(_flavor));
  locator.registerLazySingletonAsync<GraphQLClient>(()
  => GraphQLConfiguration().getClient(_flavor));
}
