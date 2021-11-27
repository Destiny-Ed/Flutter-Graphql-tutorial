import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'Screens/home_page.dart';

void main() async {
 
  await initHiveForFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
