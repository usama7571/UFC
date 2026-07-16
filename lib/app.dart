import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'screens/login/login_screen.dart';

class UFCApp extends StatelessWidget {
  const UFCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'USMAN FITNESS CLUB',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
}
