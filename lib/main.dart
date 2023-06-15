import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/fetch_detail_provider.dart';
import 'providers/name_provider.dart';
import 'providers/number_provider.dart';
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
        ChangeNotifierProvider<NumberProvider>(
          create: (ctx) => NumberProvider(),
        ),
        ChangeNotifierProxyProvider<NameProvider, FetchDetailProvider>(
          create: (ctx) => FetchDetailProvider(null, null),
          update: (context, value, previous) =>
              FetchDetailProvider(value.name, value.address),
        ),
        // ChangeNotifierProxyProvider<NumberProvider, FetchDetailProvider>(
        //   create: (_) => FetchDetailProvider(null),
        //   update: (_, value, previous) => FetchDetailProvider(value.age),
        // ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
