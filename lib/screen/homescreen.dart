import 'package:flutter/material.dart';
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
          leftLabel: "Gen", 
          rightLabel: "Strumenti"
        ),
        SingleRowContainer(
          leftLabel: "Gen", 
          rightLabel: "Strumenti"
        ),
        SingleRowContainer(
          leftLabel: "Gen", 
          rightLabel: "Strumenti"
        ),
        Spacer(flex: 7),
      ],
    );
  }
}