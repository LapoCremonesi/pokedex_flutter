import 'package:flutter/material.dart';
import 'package:pokedex/screen/pokemon_screen.dart';
import 'package:pokedex/screen/strumenti_screen.dart';
import 'package:pokedex/widget/single_row_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(flex: 1),
        SingleRowContainer(
          label: "Gen",
        ),
        Spacer(flex: 7),
      ],
    );
  }
}