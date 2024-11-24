import 'package:flutter/material.dart';
import 'package:flutterapp/comum_widgets/variables.dart';
import 'package:flutterapp/pages/home_page.dart';
import 'package:flutterapp/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 46, 3, 87)),
        useMaterial3: true,
        fontFamily: 'ROBOTO',
      ),
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          height: 60,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: thirdColor,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'profile',
            ),
          ],
        ),
        appBar: AppBar(
          actions: const [Icon(Icons.shopping_bag_outlined)],
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // title: Text(widget.title),
        ),
        body: <Widget>[
          const MyHomePage(
            title: 'Shop',
          ),
          const ProfilePage(),
        ][currentPageIndex],
      ),
      // home: const MyHomePage(title: 'Meu App'),
    );
  }
}
