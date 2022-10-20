import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

import '../constants.dart';

class GPS extends StatefulWidget {
  const GPS({super.key});

  @override
  State<GPS> createState() => _GPSState();
}

class _GPSState extends State<GPS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: myAppBar,
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const DrawerHeader(child: Icon(FeatherIcons.activity)),
            const ListTile(
              leading: Icon(FeatherIcons.home),
              title: TextButton(
                child: Text('ALBATROSS'),
                onPressed: (null),
              ),
            ),
            ListTile(
              leading: Icon(FeatherIcons.navigation),
              title: TextButton(
                child: Text('GPS'),
                onPressed: () {
                  Navigator.pushNamed(context, '/gps');
                },
              ),
            ),
            const ListTile(
              leading: Icon(FeatherIcons.wifi),
              title: TextButton(
                child: Text('KIWIX'),
                onPressed: null,
              ),
            ),
            const ListTile(
              leading: Icon(FeatherIcons.radio),
              title: TextButton(
                child: Text('RADIO'),
                onPressed: null,
              ),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final boxHeight = constraints.maxHeight;

          return Row(
            children: [
              Column(
                children: [
                  AspectRatio(
                    aspectRatio: 6,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 50,
                          color: Colors.amber[600],
                          child: const Center(child: Text('Entry A')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.amber[500],
                          child: const Center(child: Text('Entry B')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.amber[100],
                          child: const Center(child: Text('Entry C')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(),
              Column(),
            ],
          );
        },
      ),
    );
  }
}
