import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_message_reels_frontend/services/auth_service.dart';
import 'package:my_message_reels_frontend/shared/types/dto/auth_login.dto.dart';
import 'package:my_message_reels_frontend/widgets/app_page/app_page.dart';

// '/'
class Home extends HookWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppPage(appBarTitle: 'Room List', child: Placeholder());
  }
}
