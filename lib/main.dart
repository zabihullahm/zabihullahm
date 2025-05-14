import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut/example.dart';
import 'package:provider_tut/exampleprovider.dart';
import 'package:provider_tut/favorite_provider.dart';
import 'package:provider_tut/favorite_screen.dart';
import 'package:provider_tut/provider_class.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderClass()),
        ChangeNotifierProvider(create: (_) => Exampleprovider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: MaterialApp(
        home: FavoriteScreen(),
      ),
    );
  }
}
