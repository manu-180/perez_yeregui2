import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perezyeregui/config/router/app_router.dart';
import 'package:perezyeregui/config/theme/app_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF5C5664), 
    systemNavigationBarColor: Color(0xFF5C5664),
    statusBarIconBrightness: Brightness.light, 
    systemNavigationBarIconBrightness: Brightness.light, 
  ));

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
