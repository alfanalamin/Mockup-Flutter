import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/page/post_screen.dart';
import 'package:flutter_application_1/presentation/provider/blog_post_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/injection.dart' as di;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.locator<BlogPostProvider>(),
          )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Inter',
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const BlogPostScreen(
        ),
      )
    ); 
  }
}