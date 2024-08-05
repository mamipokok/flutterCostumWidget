import 'package:flutter/material.dart';

class lineUp extends StatelessWidget {
  final List<Player> players = [
    Player(name: 'Pa Novan', image: 'images/paNovan.png'),
    Player(name: 'Nabil', image: 'images/Abil.png'),
    Player(name: 'Pa Fiqri', image: 'images/paFiqri.png'),
    Player(name: 'Pa Acep', image: 'images/paAcep.png'),
    Player(name: 'Pa Lutfi', image: 'images/paLutfi.png'),
    Player(name: 'Pa dava', image: 'images/paDafa.png'),
    Player(name: 'Pa Rully', image: 'images/parully.png'),
    Player(name: 'Pa Tio', image: 'images/paTio.png'),
    Player(name: 'Iqball', image: 'images/carl.png'),
    Player(name: 'Ervan', image: 'images/alul.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Pemain',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 3,
          children: players.map((player) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(player.image, width: 89, height: 89),
                  ),
                  SizedBox(height: 8),
                  Text(player.name),
                ],
              ),
            );
          }
          ).toList(),
        ),
      ),
    );
  }
}

class Player {
  final String name;
  final String image;

  Player({required this.name, required this.image});
}
