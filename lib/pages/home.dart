import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_message_reels_frontend/widgets/app_page/app_page.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:my_message_reels_frontend/widgets/post_card/post_card.dart';

class Home extends HookWidget {
  Home({super.key});

  final List<PostCard> mockCards = [
    const PostCard(),
    const PostCard(),
    const PostCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppPage(
      child: CardSwiper(
          cardBuilder: (_, index, __, ___) {
            return mockCards[index];
          },
          cardsCount: mockCards.length),
    );
  }
}
