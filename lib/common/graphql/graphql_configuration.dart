import 'package:flutter_application_1/common/app_shared_preferences.dart';
import 'package:flutter_application_1/common/configs.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

class GraphQLConfiguration {
  GraphQLConfiguration();

  Future<GraphQLClient> getClient(String flavor) async {
    final token = GetIt.instance.get<AppSharedPreferences>().getToken();
    final HttpLink httpLink = HttpLink(
      '${flavor == 'dev' ? Configs.baseUrlDev : Configs.baseUrlProd}/graphql',
    );

    Link finalLink = httpLink;
    if (token != null && token != '') {
      final AuthLink authLink = AuthLink(
        getToken: () async => 'Bearer $token',
      );
      finalLink = authLink.concat(httpLink);
    }

    return GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      link: finalLink,
    );
  }
}
