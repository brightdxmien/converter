import 'package:currency_converter/homepage.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const CupertinoApp(
    home: CupertinoPageScaffold(
        child: Center(
      child: Converter(),
    )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: Converter(),
    );
  }
}
