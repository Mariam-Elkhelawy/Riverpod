import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_package/home_with_consumerWidget.dart';
import 'package:riverpod_package/home_without_consumerWidget.dart';
import 'package:riverpod_package/riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: Riverpod(),
    ),
  );
}

class Riverpod extends ConsumerWidget {
  const Riverpod({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:
          ref.watch(isLightTheme0).isLight ? ThemeMode.light : ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomeScreen0(),
    );
  }
}
