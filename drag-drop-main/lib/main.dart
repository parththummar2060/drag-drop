import 'package:draggable/pages/second_page.dart';
import 'package:draggable/pages/third_page.dart';
import 'package:draggable/pages/win_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "/": (context) => const homepage(),
      "2": (context) => const secondpage(),
      "3": (context) => const thirdpage(),
      "4": (context) => const WinPage(),
    }),
  );
}
