import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

import '../constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
          const crossAxisCount = 2;

          final gridViewHeight = (constraints.maxWidth / crossAxisCount);

          final double heightWithoutGridVIew =
              constraints.maxHeight - gridViewHeight;

          return Column(
            children: [
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: GridView.count(
                    childAspectRatio: 2,
                    shrinkWrap: true,
                    //primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: ElevatedButton(
                          child: Text('GPS'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/gps');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[300],
                            foregroundColor: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: ElevatedButton(
                          child: Text('KIWIX'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/kiwix');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[300],
                            foregroundColor: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: TextButton(
                          child: Text('RADIO'),
                          onPressed: null,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.grey[300],
                          child: TextButton(
                            child: Text('WHATEVER'),
                            onPressed: null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: Text('Test')),
                    Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: Text('Test')),
                    Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: Text('Test')),
                    Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: Text('Test')),
                    Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: Text('Test')),
                    Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[300],
                        child: Text('Test')),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
