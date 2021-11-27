import 'package:flutter/material.dart';
import 'package:graphql_app/Providers/add_task_provider.dart';
import 'package:graphql_app/Providers/get_task_provider.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'Providers/delete_task_provider.dart';
import 'Screens/home_page.dart';

void main() async {
  await initHiveForFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AddTaskProvider()),
          ChangeNotifierProvider(create: (_) => GetTaskProvider()),
          ChangeNotifierProvider(create: (_) => DeleteTaskProvider())
        ],
        child: const MaterialApp(
          home: HomePage(),
        ));
  }
}
