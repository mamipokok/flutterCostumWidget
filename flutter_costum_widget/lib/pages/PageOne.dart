import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Pertandingan'),
      ),
      body: MatchListView(),
    );
  }
}

class Match {
  final String club1Image;
  final String club2Image;
  final String club1Name;
  final String club2Name;
  final String matchSchedule;
  final String stadium;

  Match({
    required this.club1Image,
    required this.club2Image,
    required this.club1Name,
    required this.club2Name,
    required this.matchSchedule,
    required this.stadium,
  });
}

class MatchListView extends StatelessWidget {
  final List<Match> matches = [
    Match(
      club1Image: 'images/saptaloka.png',
      club2Image: 'images/persija.png',
      club1Name: 'saptaloka',
      club2Name: 'Persija Jakarta',
      matchSchedule: '20 Juli, 2024 - 5 Sore',
      stadium: 'Gelora Bandung Lautan Api',
    ),
    Match(
      club1Image: 'images/saptaloka.png',
      club2Image: 'images/realmadrid.png',
      club1Name: 'saptaloka',
      club2Name: 'Real Madrid',
      matchSchedule: '25 Juli, 2024 - 8 Malam',
      stadium: 'Gelora Bung Karno',
    ),
    Match(
      club1Image: 'images/saptaloka.png',
      club2Image: 'images/saptaloka.png',
      club1Name: 'Pebimbing',
      club2Name: 'Magang',
      matchSchedule: '1 September, 2024 - 5 Sore',
      stadium: 'Santiago Bernabeu',
    ),
    Match(
      club1Image: 'images/saptaloka.png',
      club2Image: 'images/cisarua.png',
      club1Name: 'Saptaloka',
      club2Name: 'Cisarua',
      matchSchedule: '10 September, 2024 - 5 Sore',
      stadium: 'Santiago Bernabeu',
    ),
    Match(
      club1Image: 'images/saptaloka.png',
      club2Image: 'images/persib.png',
      club1Name: 'Saptaloka',
      club2Name: 'Persib Bandung',
      matchSchedule: '20 September, 2024 - 5 Sore',
      stadium: 'Santiago Bernabeu',
    ),
    Match(
      club1Image: 'images/saptaloka.png',
      club2Image: 'images/smkpi.png',
      club1Name: 'Saptaloka',
      club2Name: 'PI',
      matchSchedule: '25 September, 2024 - 5 Sore',
      stadium: 'Santiago Bernabeu',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: matches.length,
      itemBuilder: (context, index) {
        return MatchItem(
          match: matches[index],
        );
      },
    );
  }
}

class MatchItem extends StatelessWidget {
  final Match match;

  MatchItem({required this.match});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      match.club1Image,
                      width: 50,
                      height: 50,
                    ),
                    Text(match.club1Name),
                  ],
                ),
                Text(
                  'VS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      match.club2Image,
                      width: 50,
                      height: 50,
                    ),
                    Text(match.club2Name),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              match.matchSchedule,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              match.stadium,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
