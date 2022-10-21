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
            ListTile(
              leading: Icon(FeatherIcons.home),
              title: TextButton(
                child: Text('ALBATROSS'),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
            const ListTile(
              leading: Icon(FeatherIcons.navigation),
              title: TextButton(
                child: Text('GPS'),
                onPressed: (null),
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
      body: Row(
        children: <Widget>[
          Column(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text('TEST'),
                  onPressed: (null),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text('TEST'),
                  onPressed: (null),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text('TEST'),
                  onPressed: (null),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
