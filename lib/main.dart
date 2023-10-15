import 'package:flutter/material.dart';
import 'package:pc/chatscreen.dart';
import 'package:pc/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pc/themeprovider.dart';

// main function
void main() {
  runApp(ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTheme = ref.watch(activeThemeProvider);
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: activeTheme == Themes.dark ? ThemeMode.dark : ThemeMode.light,
      home: const ChatScreen(),
    );
  }
}
