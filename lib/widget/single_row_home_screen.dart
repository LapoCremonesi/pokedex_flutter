import 'package:flutter/material.dart';
import 'package:pokedex/screen/pokemon_screen.dart';

class SingleRowContainer extends StatefulWidget {
  const SingleRowContainer({
    super.key,
    required this.leftLabel,
    required this.rightLabel,
  });

  final String leftLabel, rightLabel;

  @override
  State<SingleRowContainer> createState() => _SingleRowContainerState();
}

class _SingleRowContainerState extends State<SingleRowContainer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PokemonScreen(),
              ),
            );
          },
          child: Container(
            height: 80,
            width: (width / 2) - 20,
            margin: const EdgeInsets.only(left: 15, right: 5, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: Center(
              child: Text(
                widget.leftLabel,
                style: const TextStyle(
                  fontSize: 25
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            height: 80,
            width: (width / 2) - 20,
            margin: const EdgeInsets.only(left: 5, right: 15, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                widget.rightLabel,
                style: const TextStyle(
                  fontSize: 25
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
