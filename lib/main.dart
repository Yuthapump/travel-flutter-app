// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main_page.dart';
import 'package:flutter_app/splash_screen.dart';

// with Device Preview enabled
// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => MyApp(),
//     // Wrap your app
//   ),
// );

// without Device Preview enabled
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TripGuide',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
