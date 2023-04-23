import 'package:flutter/material.dart';

class TabBarWidget02 extends StatefulWidget {
  const TabBarWidget02({Key? key}) : super(key: key);

  @override
  _TabBarWidget02State createState() => _TabBarWidget02State();
}

class _TabBarWidget02State extends State<TabBarWidget02> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
          title: const Text('Flutter Mapp'),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.orangeAccent,
            child: const Icon(
              Icons.home,
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: const Icon(
              Icons.settings,
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            child: const Icon(
              Icons.person,
              size: 30,
            ),
          ),
        ]),
      ),
    );
  }
}
