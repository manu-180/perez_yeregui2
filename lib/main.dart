import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perezyeregui/config/router/app_router.dart';
import 'package:perezyeregui/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const systemOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Color(0xFF5C5664), // <- color exacto
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF5C5664),
      systemNavigationBarIconBrightness: Brightness.light,
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: systemOverlayStyle,
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: 'Perez Yeregui',
        theme: AppTheme().getColor(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
