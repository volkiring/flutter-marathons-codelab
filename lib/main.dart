import 'package:flutter/material.dart';

import 'splash_page.dart';

final Color mainGreen = Color(0xFFA6E22E);
final Color primaryGray = Color(0xFF2E2E2E);
final Color secondaryGray = Color(0xFF181818);
final Color lightGray = Color(0xFF3A3A3A);

void main() {
  runApp(
    MaterialApp(
      title: 'Марафоны',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    ),
  );
}
