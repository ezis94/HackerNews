import 'package:flutter/material.dart';
import 'package:daily_hack/models/news.dart';
import 'package:intl/intl.dart';

class NewsTile extends StatelessWidget {
  final Story article;
  final void Function(String url) onTitlePressed;
  final void Function(String auhor)? onAuthorButtonPressed;

  const NewsTile({
    super.key,
    required this.article,
    required this.onTitlePressed,
    this.onAuthorButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    var date = DateTime.fromMillisecondsSinceEpoch(article.time * 1000);
    var d24 = DateFormat('dd/MM/yyyy, HH:mm').format(date);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade700],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () => onTitlePressed(article.url),
              child: Text(
                article.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 8),
            const Divider(
              height: 2,
              thickness: 1,
              color: Colors.white38,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (onAuthorButtonPressed != null)
                  TextButton(
                    onPressed: () => onAuthorButtonPressed!(article.by),
                    child: Text(
                      "Created by: ${article.by}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                Text(
                  d24,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
