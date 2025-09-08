import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_message_reels_frontend/shared/types/dto/post.dto.dart';
import 'package:my_message_reels_frontend/widgets/app_page/app_page.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:my_message_reels_frontend/widgets/post_card/post_card.dart';

class Home extends HookWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final PostDto mockData = PostDto(
        content: 'Hi guys this is sooo amazing',
        authorId: '123123',
        createdAt: DateTime.now());

    final List<PostCard> mockCards = [
      PostCard(data: mockData),
      PostCard(data: mockData),
      PostCard(data: mockData),
      PostCard(data: mockData),
    ];

    return SizedBox(
      height: 800,
      child: CardSwiper(
        cardBuilder: (_, index, __, ___) {
          return mockCards[index];
        },
        cardsCount: mockCards.length,
      ),
    );
  }
}
