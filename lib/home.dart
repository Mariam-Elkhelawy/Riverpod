import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_package/riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: ref.watch(isLightTheme)
                ? [Colors.blue[100]!, Colors.blue[300]!]
                : [Colors.blueGrey[900]!, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),

                child: ref.watch(isLightTheme)

                    ? const Icon(
                        Icons.wb_sunny,
                        key: ValueKey('light'),
                        size: 100,
                        color: Colors.yellowAccent,
                      )
                    : const Icon(
                        Icons.nights_stay,
                        key: ValueKey('dark'),
                        size: 100,
                        color: Colors.blueAccent,
                      ),
              ),
              const SizedBox(height: 20),
              Text(
                'Tap the button to change theme',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          ref.read(isLightTheme.notifier).state =
              !ref.read(isLightTheme.notifier).state;
        },

        backgroundColor:
            ref.watch(isLightTheme) ? Colors.yellowAccent : Colors.blueAccent,
        child: Icon(
          Icons.brightness_6_outlined,
          size: 24,
          color: ref.watch(isLightTheme) ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
