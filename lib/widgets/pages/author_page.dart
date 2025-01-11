import 'package:daily_hack/helpers/error_helper.dart';
import 'package:daily_hack/helpers/url_helper.dart';
import 'package:daily_hack/providers/providers.dart';
import 'package:daily_hack/widgets/controls/news_tile.dart';
import 'package:daily_hack/models/news.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:intl/intl.dart';

class AuthorPage extends ConsumerStatefulWidget {
  final String authorName;

  const AuthorPage({super.key, required this.authorName});

  @override
  _AuthorPageState createState() => _AuthorPageState();
}

class _AuthorPageState extends ConsumerState<AuthorPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  bool _hasMoreData = true;
  int _currentPage = 0;
  List<Story> _allPosts = [];

  @override
  void initState() {
    super.initState();
    _loadMorePosts();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        !_isLoadingMore &&
        _hasMoreData) {
      _loadMorePosts();
    }
  }

  Future<void> _loadMorePosts() async {
    setState(() {
      _isLoadingMore = true;
    });

    try {
      final newPosts = await ref.read(
          authorPostsProvider(id: widget.authorName, page: _currentPage)
              .future);

      if (newPosts.isNotEmpty) {
        setState(() {
          _currentPage++;
          if (_allPosts.isEmpty) {
            _allPosts = newPosts;
          } else {
            _allPosts.addAll(newPosts);
          }
        });
      } else {
        setState(() {
          _hasMoreData = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoadingMore = false;
      });
      if (context.mounted) {
        ErrorHelper.showErrorDialog(context, "Error loading more posts: $e");
      }
    } finally {
      setState(() {
        _isLoadingMore = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final author = ref.watch(authorProvider(id: widget.authorName));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Author: ${widget.authorName}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange.shade400, Colors.orange.shade600],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
      ),
      body: author.when(
        data: (author) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange.shade400, Colors.orange.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Joined: ${DateFormat('dd/MM/yyyy, HH:mm').format(DateTime.fromMillisecondsSinceEpoch(author.created * 1000))}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 8),
                    if (author.about.isNotEmpty)
                      Container(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 200,
                          ),
                          child: SingleChildScrollView(
                            child: HtmlWidget(
                              author.about,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    setState(() {
                      _allPosts.clear();
                      _currentPage = 0;
                      _hasMoreData = true;
                    });
                    ref.invalidate(authorPostsProvider);
                    await _loadMorePosts();
                  },
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _allPosts.length + (_isLoadingMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index >= _allPosts.length) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      final article = _allPosts[index];
                      return NewsTile(
                        onTitlePressed: (url) async {
                          if (!await UrlHelper.launchURL(url) &&
                              context.mounted) {
                            ErrorHelper.showErrorDialog(
                                context, "Could not launch the url: $url");
                          }
                        },
                        article: article,
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text("Error: $error")),
      ),
    );
  }
}
