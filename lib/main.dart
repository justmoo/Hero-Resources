import 'package:flutter/material.dart';
import 'package:hero_resource/provider/heros-provider.dart';
import 'package:hero_resource/screens/hero_profile.dart';
import 'package:hero_resource/screens/heros_page.dart';
import 'package:provider/provider.dart';
import 'models/awesome_hero.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> HeroProvider(),)
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AwesomeHero? _selected_hero;

  void _handleOnTap(AwesomeHero hero) {
    setState(() {
      _selected_hero = hero;
    });
    print(hero.name);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Resources',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Navigator 2.0
      home: Navigator(
        pages: [
          MaterialPage(child: HerosPage(_handleOnTap)),
          if (_selected_hero != null)
            MaterialPage(child: HeroProfile(_selected_hero!))
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          _selected_hero = null;
          return true;
        },
      ),
    );
  }
}
