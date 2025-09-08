import 'package:flutter/material.dart';
import 'package:my_message_reels_frontend/routes.dart';

class App extends StatelessWidget {
  const App({super.key, required this.theme});
  final ThemeData theme;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Room Monitoring App',
      theme: theme,
      themeMode: ThemeMode.light,
      routerConfig: routes,
      debugShowCheckedModeBanner: false,
      // routeInformationParser: routes.routeInformationParser,
      // routeInformationProvider: routes.routeInformationProvider,
      // routerDelegate: routes.routerDelegate,
    );
  }
}
