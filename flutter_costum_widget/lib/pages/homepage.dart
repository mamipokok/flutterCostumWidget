import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_costum_widget/pages/PageThree.dart';
import 'package:flutter_costum_widget/pages/PageTwo.dart';
import 'package:flutter_costum_widget/pages/Pageone.dart';
import 'package:flutter_costum_widget/widget/customButton.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Saptaloka FC',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Custombutton(
                txt: 'Pertandingan',
                fct: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageOne()));
                }),
          ),
          Expanded(
              child: Custombutton(
                  txt: 'Pemain',
                  fct: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => lineUp()));
                  })),
          Expanded(
              child: Custombutton(
                  txt: 'Plugins',
                  fct: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => plugin()));
                  }))
        ],
      ),
    );
  }
}
