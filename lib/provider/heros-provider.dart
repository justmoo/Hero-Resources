import 'package:flutter/foundation.dart';
import 'package:hero_resource/models/awesome_hero.dart';
import "package:collection/collection.dart";

class HeroProvider with ChangeNotifier {
  List<AwesomeHero> _hero_list = [
    AwesomeHero(
        "superman",
        "insane Power",
        4,
        "He's a man with great power born in another plant",
        "assets/images/superheros/superman.jpeg",
        ["Physical power", "flying", "laser eyes"]),
    AwesomeHero(
        "CatWoman",
        "loves cats",
        3,
        "a woman turn to a cat and started to live like a cat",
        "assets/images/superheros/catwoman.jpeg",
        ["turn to a Cat", "idk fight?"]),
    AwesomeHero(
        "Ant-Man",
        "turn to an ant",
        5,
        "scientist has discovered a group of previously unknown subatomic particles, which he dubs “Pym particles.",
        "assets/images/superheros/antman.jpg",
        [ "Ant", "laser eyes"]),
    AwesomeHero(
        "Aquaman",
        "controls the sea",
        4,
        "Aquaman’s origin and even identity have been revised several times over the decades, in most iterations he possesses superhuman strength, the ability to breathe underwater, and the capacity to communicate telepathically with creatures of the sea",
        "assets/images/superheros/aquaman.jpeg",
        ["Physical power 💪 ", "flying ", "laser eyes"]),
    AwesomeHero(
        "Batman",
        "millionaire",
        5,
        "a rich guy who got bored",
        "assets/images/superheros/batman.jpeg",
        ["Physical power 💪 ", "flying ", "laser eyes"]),
  ];


  
  get hero_list => _hero_list;
  get hero_sorted_by_name => _hero_list.sort((a,b)=> a.name.compareTo(b.name));
  get hero_sorted_by_powers => _hero_list.sort((a,b)=> b.powers.length.compareTo(a.powers.length));
  get hero_sorted_by_rate => _hero_list.sort((a,b)=> b.rate.compareTo(a.rate));
}
