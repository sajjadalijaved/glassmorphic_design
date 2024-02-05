import 'package:flutter/material.dart';
import 'package:glass_morphism/login_screen.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
// ignore_for_file: library_private_types_in_public_api

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Glass Morphism',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const LoginScreen());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ExpansionTileCardState> cardA =
      GlobalKey<ExpansionTileCardState>();
  final GlobalKey<ExpansionTileCardState> cardB =
      GlobalKey<ExpansionTileCardState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ExpansionTileCard(
            key: cardB,
            leading: const CircleAvatar(child: Text('S')),
            title: const Text('Sajjad Ali'),
            subtitle: const Text('It has the Expanded Logo.'),
            children: <Widget>[
              const Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/boy.jpg'))),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
