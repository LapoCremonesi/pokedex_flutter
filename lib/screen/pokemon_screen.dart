import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import '../models/pokemon.dart';
import '../widget/pokemon_card.dart';
import 'dart:convert';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({super.key});

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  List<Pokemon> pokemonList = [];
  String api = "https://pokeapi.co/api/v2/pokemon?limit=151&offset=0";

  @override
  void initState() {
    super.initState();
    getPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: pokemonList.length,
          itemBuilder: (context, index) {
            return PokemonCard(pokemon: pokemonList[index]);
          },
        ),
      ),
    );
  }

  Future<void> getPokemon() async {
    Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      for (var i = 0; i < json["results"].length; i++) {
        Response pokemonResponse =
            await http.get(Uri.parse(json["results"][i]["url"]));

        if (pokemonResponse.statusCode == 200) {
          var pokemonJson = jsonDecode(pokemonResponse.body);

          setState(() {
            pokemonList.add(
              Pokemon(
                name: pokemonJson["name"],
                frontSprite: pokemonJson["sprites"]["front_default"],
                id: pokemonJson["id"],
                firstType: pokemonJson["types"][0]["type"]["name"],
                secondType: pokemonJson["types"].length > 1
                    ? pokemonJson["types"][1]["type"]["name"]
                    : "",
              ),
            );
          });
        }
      }
    }
  }
}
