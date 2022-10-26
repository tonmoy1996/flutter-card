import 'package:flutter/material.dart';

void main() {
  runApp(const BeautifulCard());
}

class BeautifulCard extends StatelessWidget {
  const BeautifulCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Card',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: const [TitleSection(), ButtonSection()],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
                const Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text('41')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.call, "CALL"),
          _buildButtonColumn(Colors.blue, Icons.route, "ROUTE"),
          _buildButtonColumn(Colors.blue, Icons.share, "SHARE"),
        ],
      ),
    );
  }
}
