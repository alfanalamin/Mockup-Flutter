import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/provider/blog_post_provider.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BlogPostScreen extends StatefulWidget {
  const BlogPostScreen({super.key});

  @override
  _BlogPostScreenState createState() => _BlogPostScreenState();
}
class _BlogPostScreenState extends State<BlogPostScreen> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
    Future.microtask(() => Provider.of<BlogPostProvider>(context, listen: false)
    ..doGetPost().then((value){
      context.read<BlogPostProvider>().postsData?.items.forEach((element){
        print(element.title);
      });
    }));
  });
  }
  void _onRefresh() async{

  }

  void _onLoading() async{
    await Future.delayed(const Duration(milliseconds: 1000));
    if(mounted) setState(() {
      _refreshController.loadComplete();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Blog Post',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
