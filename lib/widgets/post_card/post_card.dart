import 'package:flutter/material.dart';
import 'package:my_message_reels_frontend/shared/types/dto/post.dto.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.data});

  final PostDto data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            const Positioned(
              top: 0,
              left: 0,
              child: Icon(Icons.person_2),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectableText(data.content),
                const TextField(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
