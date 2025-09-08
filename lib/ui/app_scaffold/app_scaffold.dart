import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:my_message_reels_frontend/controllers/controllers.dart';
import 'package:my_message_reels_frontend/ui/ui.dart';

class AppScaffold extends HookWidget {
  // Child has to be slivers
  final Widget sliver;
  const AppScaffold({super.key, required this.sliver});

  @override
  Widget build(BuildContext context) {
    final appBarController = context.watch<AppBarController>();
    useEffect(() {
      appBarController.controller = ScrollController();
      // scrollController.controller!.animateTo(offset, duration: duration, curve: curve)
      return appBarController.controller!.dispose;
    });
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        controller: appBarController.controller,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: buildAppBar(
                context,
                forceElevated: innerBoxIsScrolled,
              ),
            ),
          ];
        },
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(builder: (context) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverOverlapInjector(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                sliver
              ],
            );
          }),
        ),
      ),
    );
  }
}
