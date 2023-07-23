import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/state_enum.dart';
import 'package:flutter_application_1/presentation/provider/blog_post_provider.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
class BlogPostScreen extends StatefulWidget {
  const BlogPostScreen({super.key});

  @override
  _BlogPostScreenState createState() => _BlogPostScreenState();
}

class _BlogPostScreenState extends State<BlogPostScreen> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<BlogPostProvider>(context, listen: false).doGetPost();
    });
  }

  void _onRefresh() async {
    // Your refresh logic
  }

  void _onLoading() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    if (mounted) {
      setState(() {
        _refreshController.loadComplete();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Blog Post'),
    ),
    body: Consumer<BlogPostProvider>(
      builder: (context, provider, _) {
        switch (provider.postState) {
          case RequestState.Empty:
            return const Center(
              child: Text('No data available.'),
            );
          case RequestState.Loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case RequestState.Loaded:
            if (provider.postsData != null) {
              // Display the fetched data using ListView.builder
              return SmartRefresher(
                controller: _refreshController,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                child: ListView.builder(
                  itemCount: provider.postsData!.items.length,
                  itemBuilder: (context, index) {
                    final post = provider.postsData!.items[index];
                    return ListTile(
                      title: Text(post.title ?? ''),
                      // Add more widgets to display other details of the post
                    );
                  },
                ),
              );
            } else {
              // Show an error message if data fetch fails
              return const Center(
                child: Text('Failed to fetch data.'),
              );
            }
          case RequestState.Error:
            return const Center(
              child: Text('Error fetching data.'),
            );
          default:
            return const Center(
              child: Text('Unexpected state.'),
            );
        }
      },
    ),
  );
}
}