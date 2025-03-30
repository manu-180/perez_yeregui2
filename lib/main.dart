import 'package:flutter/material.dart';
import 'package:perezyeregui/config/router/app_router.dart';
import 'package:perezyeregui/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Perez Yeregui',
      theme: AppTheme().getColor(),
      debugShowCheckedModeBanner: false,
    );
  }
}
