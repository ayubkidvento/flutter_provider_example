import 'package:flutter/material.dart';
import 'package:flutter_provider_example/providers/fetch_detail_provider.dart';
import 'package:flutter_provider_example/providers/name_provider.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NameProvider>(
          create: (ctx) => NameProvider(),
        ),
        ChangeNotifierProxyProvider<NameProvider?, FetchDetailProvider>(
          create: (ctx) => FetchDetailProvider(null),
          update: (context, value, previous) => FetchDetailProvider(value),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
