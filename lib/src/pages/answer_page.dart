import 'package:answers/src/palette/palette.dart';
import 'package:answers/src/widgets/post_card.dart';
import 'package:flutter/material.dart';

class AnswerPage extends StatelessWidget {
  const AnswerPage({Key? key, required this.icon, required this.name, required this.question}) : super(key: key);

  final String icon;
  final String name;
  final String question;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.ktoDark,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            PostCard(
              size: Size(size.width, size.height),
              text: question,
              option: 'Reply',
              padding: Size(0, 0),
              icon: icon,
              name: name,
              action: () {},
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Answers 💭',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                TextButton(
                  child: Text(
                    'view all',
                    style: TextStyle(color: Colors.white24),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                physics: BouncingScrollPhysics(),
                children: [
                  _buildAnswer(
                    size: size,
                    name: 'sara18',
                    text: 'Very sad ending. I never imaginate the ending will be like that ',
                    icon: '👮‍♀️',
                    color: Colors.red,
                  ),
                  _buildAnswer(
                    size: size,
                    name: 'guido21',
                    text: 'Very sad ending. I never imaginate the ending will be like that 😭',
                    icon: '👨‍🍳',
                    color: Colors.green,
                  ),
                  _buildAnswer(
                    size: size,
                    name: 'mario',
                    text: 'Very sad ending. I never imaginate the ending will be like that ',
                    icon: '👨‍🎤',
                    color: Colors.white,
                  ),
                  _buildAnswer(
                    size: size,
                    name: 'milechi',
                    text: 'Very sad ending. I never imaginate the ending will be like that 😭',
                    icon: '👩‍🔧',
                    color: Colors.blue,
                  ),
                  _buildAnswer(
                    size: size,
                    name: 'carlos',
                    text: 'Very sad ending. I never imaginate the ending will be like that ',
                    icon: '👷',
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswer({String? name, String? icon, String? text, Color? color, required Size size}) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0XFF22252d),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        margin: EdgeInsets.only(bottom: 20),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Text(icon ?? '❔', style: TextStyle(fontSize: 24)),
                  radius: size.width * 0.06,
                  backgroundColor: color ?? Color(0xffe0c4b5),
                ),
                SizedBox(width: size.width * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@ $name',
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: size.width * 0.03),
                    Container(
                      width: size.width * 0.6,
                      child: Text(
                        text ?? '....',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 0,
              top: 0,
              child: InkWell(
                child: Icon(Icons.more_vert, color: Colors.white),
                onTap: () {},
              ),
            ),
          ],
        ),
      );
}
