import 'package:get/get.dart';
import 'package:latihan_11pplg2/models/player.dart';

class PlayerController extends GetxController {
  var players = <Player>[
    Player(
      image: 'https://i.pinimg.com/736x/25/c8/82/25c88270a5ad16b7a6cc45b4c828b974.jpg',
      name: 'Cristiano Ronaldo',
      position: 'Forward',
      number: 7,
    ),
    Player(
      image: 'https://imageio.forbes.com/specials-images/imageserve/663e595b4509f97fdafb95f5/0x0.jpg?format=jpg&crop=383,383,x1045,y23,safe&height=416&width=416&fit=bounds',
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
