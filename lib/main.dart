import 'package:couple_q/constants.dart';
import 'package:couple_q/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoupleQ());
}

class CoupleQ extends StatelessWidget {
  const CoupleQ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 디버그 마크 없애기
      debugShowCheckedModeBanner: false,

      // Light 테마 표시
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: LightAppColors.backgroundColor),
        colorScheme:
            const ColorScheme.light(background: LightAppColors.backgroundColor),
      ),

      // Dark 테마 표시
      darkTheme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: DarkAppColors.backgroundColor),
        colorScheme:
            const ColorScheme.dark(background: DarkAppColors.backgroundColor),
      ),

      // 앱 테마 값 설정
      themeMode: ThemeMode.system, // 시스템 설정에 따라 테마 자동 설정

      // 라우트 설정
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
