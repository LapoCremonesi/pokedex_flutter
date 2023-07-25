import 'package:flutter/material.dart';
import 'package:pokedex/screen/pokemon_screen.dart';

class SingleRowContainer extends StatefulWidget {
  const SingleRowContainer({
    super.key,
    required this.label,
  });

  final String label;

  @override
  State<SingleRowContainer> createState() => _SingleRowContainerState();
}

class _SingleRowContainerState extends State<SingleRowContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        width: double.infinity,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        child: Center(
          child: Text(
            widget.label,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
