import 'dart:io';

/// This should be used while in development mode,
///
/// do NOT do this when you want to release to production,
///
/// the aim of this answer is to make the development a bit easier for you,
/// for production, you need to fix your certificate issue and use it properly,
/// look at the other answers for this as it might be helpful for your case.
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
