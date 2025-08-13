import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/controllers/player_controller.dart';
import 'package:latihan_11pplg2/models/player.dart';
import 'package:latihan_11pplg2/routes/routes.dart';

class PlayerListPage extends StatelessWidget {
  final PlayerController controller = Get.put(PlayerController());

  PlayerListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args = Get.arguments;
      if (args != null && args['fromCalculator'] == true) {
        Get.snackbar(
          'Sukses',
          'Selamat datang di halaman pemain!',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green[700],
          colorText: Colors.white,
          duration: const Duration(seconds: 2),
          margin: const EdgeInsets.all(12),
          borderRadius: 12,
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Squad Pemain'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 237, 4, 245),
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      backgroundColor: Colors.grey[100],
      body: Obx(() {
        if (controller.players.isEmpty) {
          return const Center(
            child: Text(
              "Tidak ada pemain",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          );
        }

        return GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 kolom
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8,
          ),
          itemCount: controller.players.length,
          itemBuilder: (context, index) {
            final player = controller.players[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.playerEdit, arguments: {
                  'index': index,
                  'player': player,
                });
              },
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            child: Image.network(
                              player.image,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Container(
                                color: Colors.grey[300],
                                child: const Icon(Icons.person,
                                    size: 60, color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                player.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${player.position} • #${player.number}',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.red,
                      child: IconButton(
                        icon: const Icon(Icons.close,
                            size: 16, color: Colors.white),
                        onPressed: () {
                          controller.removePlayer(index);
                          Get.snackbar(
                            'Berhasil',
                            'Pemain dihapus',
                            snackPosition: SnackPosition.TOP,
                            backgroundColor: Colors.black87,
                            colorText: Colors.white,
                            duration: const Duration(seconds: 2),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.playerEdit, arguments: {
            'index': -1,
            'player': Player(name: '', position: '', number: 0, image: ''),
          });
        },
        child: const Icon(Icons.add),
                backgroundColor: const Color.fromARGB(255, 237, 4, 245),

      ),
    );
  }
}
