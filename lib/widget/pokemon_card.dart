import 'package:flutter/material.dart';
import 'package:pokedex/screen/pokemon_info.dart';
import '../models/pokemon.dart';
import '../function.dart';

class PokemonCard extends StatefulWidget {
  const PokemonCard({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PokemonInfo(pokemon: widget.pokemon),
          ),
        );
      },
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Constant().colorFromPokemonType(widget.pokemon.firstType),
              widget.pokemon.secondType == ""
                  ? Constant().colorFromPokemonType(widget.pokemon.firstType)
                  : Constant().colorFromPokemonType(widget.pokemon.secondType)
            ],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Row(
          children: [
            Image.network(widget.pokemon.frontSprite),
            Text("${widget.pokemon.name} #${widget.pokemon.id}"),
            const Spacer(),
            Column(
              children: [
                Container(
                  height: 35,
                  width: 100,
                  margin:
                      const EdgeInsets.only(top: 10, bottom: 7.5, right: 15),
                  decoration: BoxDecoration(
                      color: Constant().colorFromPokemonType(widget.pokemon.firstType),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
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
                            color:
                                Constant().colorFromPokemonType(widget.pokemon.secondType),
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Text(widget.pokemon.secondType),
                        ),
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

