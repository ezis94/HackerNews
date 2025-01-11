import 'package:daily_hack/providers/providers.dart';
import 'package:daily_hack/widgets/controls/news_tile.dart';
import 'package:daily_hack/widgets/pages/author_page.dart';
import 'package:daily_hack/helpers/url_helper.dart';
import 'package:daily_hack/helpers/error_helper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(ProviderScope(child: MyApp(router: _router)));

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HackerNewsPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/author/:authorName',
          builder: (BuildContext context, GoRouterState state) {
            final authorName = state.pathParameters["authorName"]!;
            return AuthorPage(authorName: authorName);
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  final GoRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class HackerNewsPage extends ConsumerWidget {
  const HackerNewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final news = ref.watch(newsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('The best scoop of news for hackers')),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(newsProvider);
        },
        child: news.when(
          data: (articles) => ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              return NewsTile(
                onTitlePressed: (url) async {
                  if (!await UrlHelper.launchURL(url) && context.mounted) {
                    ErrorHelper.showErrorDialog(
                        context, "Could not launch the url: $url");
                  }
                },
                onAuthorButtonPressed: (author) =>
                    context.go('/author/$author'),
                article: article,
              );
            },
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text("Error: $error")),
        ),
      ),
    );
  }
}
