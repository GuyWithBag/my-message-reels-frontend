import 'package:flutter/material.dart';
import 'package:my_message_reels_frontend/routes.dart';
import 'package:my_message_reels_frontend/shared/themes/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Room Monitoring App',
      theme: lightTheme,
      themeMode: ThemeMode.dark,
      routerConfig: routes,
      debugShowCheckedModeBanner: false,
      // routeInformationParser: routes.routeInformationParser,
      // routeInformationProvider: routes.routeInformationProvider,
      // routerDelegate: routes.routerDelegate,
    );
  }
}
