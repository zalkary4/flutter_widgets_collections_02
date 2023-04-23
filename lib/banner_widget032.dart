import 'package:flutter/material.dart';

class BannerWidget032 extends StatefulWidget {
  const BannerWidget032({Key? key}) : super(key: key);

  @override
  _BannerWidget032State createState() => _BannerWidget032State();
}

class _BannerWidget032State extends State<BannerWidget032> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: ClipRect(
          child: Banner(
            message: '25% off',
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                        'data:image/jpeg;base64,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'),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Flutter Course (Beginners)',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent,
                          ),
                          child: const Text('Get Now'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
