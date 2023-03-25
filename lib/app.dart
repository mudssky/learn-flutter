import 'package:flutter/material.dart';
import 'package:learn_flutter/models/practice.dart';
import 'package:learn_flutter/routers/index.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PracticeModal())
        ],
        child: MaterialApp.router(
          theme: ThemeData(fontFamily: 'LXGWWenKai'),
          routerConfig: globalRouter,
        ));
  }
}
