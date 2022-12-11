import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  final TextStyle textStyle = const TextStyle(
    fontWeight: FontWeight.bold,
  );

  StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text(
                    'Woman',
                    style: textStyle,
                  ),
                  const Spacer(),
                  Text(
                    'Kids',
                    style: textStyle,
                  ),
                  const Spacer(),
                  Text(
                    'Shoes',
                    style: textStyle,
                  ),
                  const Spacer(),
                  Text(
                    'Bag',
                    style: textStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                'asset/bag.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              child: Image.asset(
                'asset/cloth.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
