import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import '../function.dart';

class PokemonInfo extends StatefulWidget {
  const PokemonInfo({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  State<PokemonInfo> createState() => _PokemonInfoState();
}

class _PokemonInfoState extends State<PokemonInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.pokemon.name),
          backgroundColor: Colors.yellow,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.only(top: 20, left: 20),
                  child: Image.network(
                    widget.pokemon.frontSprite,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Text(widget.pokemon.name),
                    Container(
                      height: 35,
                      width: 100,
                      margin: const EdgeInsets.only(top: 10, bottom: 7.5, right: 15),
                      decoration: BoxDecoration(
                        color: Constant().colorFromPokemonType(widget.pokemon.firstType),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(widget.pokemon.firstType),
                      ),
                    ),
                    widget.pokemon.secondType == ""
                      ? Container()
                      : Container(
                        height: 35,
                        width: 100,
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: Constant().colorFromPokemonType(widget.pokemon.secondType),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(widget.pokemon.secondType),
                        ),
                      ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
