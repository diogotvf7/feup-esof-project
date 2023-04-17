import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pocket_cinema/model/comment.dart';

class CommentWidget extends StatelessWidget {
  final Comment comment;

  const CommentWidget({
    Key? key,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${comment.username}: ${comment.content}',
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 4),
          Text(
            DateFormat('hh:mm MM/dd/yyyy').format(comment.createdAt.toDate()),
            style: const TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
