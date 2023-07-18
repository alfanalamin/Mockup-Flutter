import 'package:flutter/material.dart';
import 'package:flutter_application_1/injection.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BlogPostScreen extends StatefulWidget {
  @override
  _BlogPostScreenState createState() => _BlogPostScreenState();
}

class _BlogPostScreenState extends State<BlogPostScreen> {
  late Future<GraphQLClient> clientFuture;

  @override
  void initState() {
    super.initState();
    clientFuture = _initializeDependencies();
  }

  Future<GraphQLClient> _initializeDependencies() async {
    await locator.isReady<GraphQLClient>();
    return locator<GraphQLClient>();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GraphQLClient>(
      future: clientFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // GraphQLClient is ready, build your UI here
          return const Text('GraphQLClient'); // Replace with your actual UI
        }
      },
    );
  }
}
