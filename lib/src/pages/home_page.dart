import 'package:flutter/material.dart';
import 'package:answers/src/pages/answer_page.dart';
import 'package:answers/src/palette/palette.dart';
import 'package:answers/src/widgets/post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    var buttonStyle = ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
        backgroundColor: MaterialStateProperty.all(Color(0xff1e2128)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        )));
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.ktoDark,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.expand_more),
        ),
        title: _titleApp(),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xffe0c4b5),
            child: IconButton(
              padding: EdgeInsets.only(right: 0),
              icon: Text(
                '🧒',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 40,
            child: _buttnsList(buttonStyle),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: PostCard(
              size: size,
              text: 'Ask & discuss everythig here!',
              option: 'New Post',
              padding: Size(10, 0),
              icon: '🧒',
              action: () {},
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Popular Question 🔥',
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
          Container(
            height: size.height * 0.24,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                PostCard(
                  size: Size(size.width * 0.6, size.height * 0.7),
                  text: 'What do you think about AoT ending? 👀',
                  option: 'Open Post',
                  padding: Size(10, 0),
                  name: 'roberto',
                  icon: '👴',
                  color: Colors.yellow,
                  action: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnswerPage(
                        icon: '👴',
                        name: 'roberto',
                        question: 'What do you think about AoT ending? 👀',
                      ),
                    ),
                  ),
                ),
                PostCard(
                  size: Size(size.width * 0.6, size.height * 0.7),
                  text: 'Ask & discuss everythig here!',
                  option: 'Open Post',
                  padding: Size(10, 0),
                  name: 'clara',
                  icon: '👩‍🦰',
                  color: Colors.pink,
                  action: () {},
                ),
                PostCard(
                  size: Size(size.width * 0.6, size.height * 0.7),
                  text: 'Ask & discuss everythig here!',
                  option: 'Open Post',
                  padding: Size(10, 0),
                  name: 'ricardo',
                  icon: '🧔',
                  color: Colors.red,
                  action: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.08,
        child: _buttons(),
      ),
    );
  }

  Row _buttons() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () => setState(() => _curr = 0),
            icon: Icon(Icons.home_outlined, color: _curr == 0 ? Colors.green : Colors.white, size: 34),
          ),
          IconButton(
            onPressed: () => setState(() => _curr = 1),
            icon: Icon(Icons.widgets_outlined, color: _curr == 1 ? Colors.green : Colors.white, size: 34),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () => setState(() => _curr = 2),
                icon: Icon(Icons.email_outlined, color: _curr == 2 ? Colors.green : Colors.white, size: 34),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () => setState(() => _curr = 3),
            icon: Icon(Icons.settings_outlined, color: _curr == 3 ? Colors.green : Colors.white, size: 34),
          ),
        ],
      );

  ListView _buttnsList(ButtonStyle buttonStyle) => ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 12),
          _buttonOpt(buttonStyle: buttonStyle, icon: Icons.psychology, onTap: () {}, text: 'Conspiration'),
          SizedBox(width: 12),
          _buttonOpt(
            buttonStyle: buttonStyle,
            onTap: () {},
            icon: Icons.change_history,
            text: 'Motivation',
          ),
          SizedBox(width: 12),
          _buttonOpt(
            buttonStyle: buttonStyle,
            onTap: () {},
            icon: Icons.local_pizza,
            text: 'Food',
          ),
          SizedBox(width: 12),
          _buttonOpt(buttonStyle: buttonStyle, icon: Icons.psychology, onTap: () {}, text: 'Conspiration'),
          SizedBox(width: 12),
          _buttonOpt(
            buttonStyle: buttonStyle,
            onTap: () {},
            icon: Icons.change_history,
            text: 'Motivation',
          ),
          SizedBox(width: 12),
          _buttonOpt(
            buttonStyle: buttonStyle,
            onTap: () {},
            icon: Icons.local_pizza,
            text: 'Food',
          ),
          SizedBox(width: 12),
        ],
      );

  TextButton _buttonOpt({
    required Function() onTap,
    required ButtonStyle buttonStyle,
    required String text,
    required IconData icon,
  }) {
    return TextButton.icon(
      style: buttonStyle,
      onPressed: onTap,
      icon: Icon(icon, color: Colors.white),
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _titleApp() => Column(
        children: [
          Text(
            'Current location ...',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 16, color: Colors.green),
              SizedBox(width: 10),
              Text(
                'Town, Country',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 30),
            ],
          ),
        ],
      );
}
