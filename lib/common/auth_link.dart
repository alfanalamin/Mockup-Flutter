import 'package:graphql/client.dart';

typedef RequestTransformer = Future<Request> Function(Request request);

typedef OnException = Future<String> Function(
    HttpLinkServerException exception);

class AuthLink extends _AsyncReqTransformLink {
  AuthLink({
    required this.getToken,
    this.headerKey = 'Authorization',
  }) : super(requestTransformer: transform(headerKey, getToken));

  // Authentication callback
  final Future<String> Function() getToken;

  final String headerKey;

  static RequestTransformer transform(
    String headerKey,
    Future<String> Function() getToken,
  ) =>
      (Request request) async {
        final token = await getToken();
        return request.updateContextEntry<HttpLinkHeaders>(
          (headers) => HttpLinkHeaders(
            headers: <String, String>{
              ...headers?.headers ?? <String, String>{},
              headerKey: token,
            },
          ),
        );
      };
}

class _AsyncReqTransformLink extends Link {
  final RequestTransformer requestTransformer;

  _AsyncReqTransformLink({
    required this.requestTransformer,
  });

  @override
  Stream<Response> request(
    Request request, [
    NextLink? forward,
  ]) async* {
    yield* forward!(await requestTransformer(request));
  }
}
