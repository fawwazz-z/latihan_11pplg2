import 'package:get/get.dart';
import 'package:latihan_11pplg2/models/player.dart';

class PlayerController extends GetxController {
  var players = <Player>[
    Player(
      image: 'https://i.pinimg.com/736x/bd/ae/e4/bdaee48b08c66db5f28eaf9595a6661c.jpg',
      name: 'Cristiano Ronaldo',
      position: 'Forward',
      number: 7,
    ),
    Player(
      image: 'https://i.pinimg.com/1200x/59/59/65/595965774b453a3c2e10d43319c9a24b.jpg',
      name: 'Lionel Messi',
      position: 'Midfielder',
      number: 10,
    ),
  ].obs;

  void updatePlayer(int index, Player updatedPlayer) {
    players[index] = updatedPlayer;
  }

  void addPlayer(Player player) {
    players.add(player);
  }

  void removePlayer(int index) {
    players.removeAt(index);
  }
}
