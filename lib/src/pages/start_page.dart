import 'package:flutter/material.dart';
import 'package:answers/src/palette/palette.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.ktoDark,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _items(['👜', '💘', '🍿'], ['Shop', 'Love', 'Netflix'], true),
                  _items(['🦠', '🎉', '⚽'], ['Covid', 'Party', 'Sport'], false),
                  _items(['🍔', '🛫', '📈'], ['Food', 'Travel', 'Stock'], true),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 30),
              child: Text(
                'Find the answer just one tap!',
                style: TextStyle(color: Colors.white, fontSize: 34),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Have samething to share with a question? Now you can play here!',
                style: TextStyle(color: Colors.white54, fontSize: 18, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () => Navigator.pushNamed(context, '/'),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          child: Text(
            'Get Started',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Column _items(List icons, List texts, bool x) => Column(
        children: [
          SizedBox(height: x ? 60 : 0),
          _item(icons[0], texts[0]),
          _item(icons[1], texts[1]),
          _item(icons[2], texts[2]),
        ],
      );

  Container _item(String icon, String text) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        width: 80,
        height: 120,
        decoration: BoxDecoration(
          color: Color(0XFF22242f),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$icon',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            Text(
              '$text',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      );
}
