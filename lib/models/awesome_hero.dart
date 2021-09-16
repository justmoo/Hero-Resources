class AwesomeHero {
  String name;
  String miniDescription;
  String description;
  double rate;
  String image;
  List<String> powers;

  AwesomeHero(this.name, this.miniDescription, this.rate, this.description,
      this.image, this.powers);
}


  List<AwesomeHero> heros_init = [
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
        ["Ant", "laser eyes"]),
    AwesomeHero(
        "Aquaman",
        "controls the sea",
        4,
        "Aquaman’s origin and even identity have been revised several times over the decades, in most iterations he possesses superhuman strength, the ability to breathe underwater, and the capacity to communicate telepathically with creatures of the sea",
        "assets/images/superheros/aquaman.jpeg",
        ["Physical power 💪 ", "flying ", "laser eyes"]),
   
  ];
