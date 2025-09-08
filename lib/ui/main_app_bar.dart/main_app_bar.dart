import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_message_reels_frontend/controllers/app_bar_controller.dart';
// import 'package:my_message_reels_frontend/widgets/widgets.dart';

Widget buildAppBar(BuildContext context, {bool forceElevated = false}) {
  AppBarController notifier = context.watch<AppBarController>();

  return SliverAppBar(
    forceElevated: forceElevated,
    expandedHeight: 80,
    pinned: notifier.state.pinned,
    flexibleSpace: FlexibleSpaceBar(
      title: Row(
        children: [
          // const BackIconButton(),
          // const SizedBox(
          //   width: 10,
          // ),
          SelectableText(
            'Message Reels',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    ),
  );
}
