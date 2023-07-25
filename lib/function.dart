import 'package:flutter/material.dart';

class Constant {
  Color colorFromPokemonType(type) {
    switch (type) {
      case "normal":
        return const Color(0xFF9199A1);
      case "fire":
        return const Color(0xFFFE9C54);
      case "fighting":
        return const Color(0xFFCD406A);
      case "water":
        return const Color(0xFF4F90D5);
      case "flying":
        return const Color(0xFF8EA8DE);
      case "grass":
        return const Color(0xFF62BB5A);
      case "poison":
        return const Color(0xFFA96AC8);
      case "electric":
        return const Color(0xFFF4D23C);
      case "ground":
        return const Color(0xFFD87844);
      case "psychic":
        return const Color(0xFFF67177);
      case "rock":
        return const Color(0xFFC5B78B);
      case "ice":
        return const Color(0xFF73CEBF);
      case "bug":
        return const Color(0xFF91C02E);
      case "dragon":
        return const Color(0xFF0A6DC2);
      case "ghost":
        return const Color(0xFF5269AC);
      case "dark":
        return const Color(0xFF5A5365);
      case "steel":
        return const Color(0xFF5A8DA1);
      case "fairy":
        return const Color(0xFFEB8FE6);
      case "":
        return const Color(0x00000000);
      default:
        return const Color(0xFF00FF00);
    }
  }
}
