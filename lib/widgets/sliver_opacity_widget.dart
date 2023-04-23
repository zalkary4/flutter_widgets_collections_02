import 'package:flutter/material.dart';

class SliverOpacityWidget extends StatefulWidget {
  const SliverOpacityWidget({Key? key}) : super(key: key);

  @override
  _SliverOpacityWidgetState createState() => _SliverOpacityWidgetState();
}

class _SliverOpacityWidgetState extends State<SliverOpacityWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverOpacity(
            opacity: 0.1,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.2,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.3,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.4,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.5,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.6,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.7,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.8,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 0.9,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverOpacity(
            opacity: 1,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Card(
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Flutter Mapp'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
