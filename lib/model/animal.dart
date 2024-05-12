class Animal {
  final int id;
  final String name;
  final String description;
  final animalimage;

  Animal(this.id, this.name, this.description, this.animalimage);
}

List<Animal> animalList = [
  Animal(
      1,
      'Crab',
      'Crabs are decapod crustaceans of the infraorder Brachyura, which typically have a very short projecting "tail" (abdomen) usually hidden entirely under the thorax.',
      'asset/images/c_crab.png'),
  Animal(
      2,
      'Elephant',
      'Elephants are the largest existing land animals. Three species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant.',
      'asset/images/c_elephant.png'),
  Animal(
      3,
      'Fish',
      'Fish are aquatic, craniate, gill-bearing animals that lack limbs with digits.',
      'asset/images/c_fish.png'),
  Animal(
      4,
      'Giraffe',
      ' The giraffe is an African artiodactyl mammal, the tallest living terrestrial animal and the largest ruminant.',
      'asset/images/c_girafe.png'),
  Animal(
      5,
      'Rabbit',
      'Rabbits are small mammals in the family Leporidae of the order Lagomorpha.',
      'asset/images/c_rabbit.png'),
  Animal(
      6,
      'Tiger',
      'The tiger is the largest extant cat species and a member of the genus Panthera.',
      'asset/images/c_tiger.png'),
];














  // static List<Animal> fetchAll() {
  //   return [
  //     Animal(
  //         1,
  //         'Crab',
  //         'Crabs are decapod crustaceans of the infraorder Brachyura, which typically have a very short projecting "tail" (abdomen) usually hidden entirely under the thorax.',
  //         'asset/images/c_crab.png'),
  //     Animal(
  //         2,
  //         'Fish',
  //         'Fish are aquatic, craniate, gill-bearing animals that lack limbs with digits.',
  //         'asset/images/c_fish.png'),
  //     Animal(3, 'Lobster', 'Lobsters are a family of large marine crustaceans.',
  //         'asset/images/c_lobster.png'),
  //     Animal(
  //         4,
  //         'Octopus',
  //         'The octopus is a soft-bodied, eight-limbed mollusc of the order Octopoda.',
  //         'asset/images/c_octopus.png'),
  //     Animal(
  //         5,
  //         'Shark',
  //         'Sharks are a group of elasmobranch fish characterized by a cartilaginous skeleton, five to seven gill slits on the sides of the head, and pectoral fins that are not fused to the head.',
  //         'asset/images/c_shark.png'),
  //     Animal(
  //         6,
  //         'Starfish',
  //         'Starfish or sea stars are star-shaped echinoderms belonging to the class Asteroidea.',
  //         'asset/images/c_starfish.png'),
  //     Animal(7, 'Turtle', 'Turtles are reptiles of the order Testudines.',
  //         'asset/images/c_turtle.png'),
  //     Animal(
  //         8,
  //         'Whale',
  //         'Whales are a widely distributed and diverse group of fully aquatic placental marine mammals.',
  //         'asset/images/c_whale.png'),
  //   ];
  // }