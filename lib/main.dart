import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ADMIN MODULE/navigation/navigationProvider.dart';
import 'ADMIN MODULE/pages/layout.dart';
int test=0;

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) =>ChangeNotifierProvider(
    create: ((context) => NavigationProvider()),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SiteLayout(index: 0,),
    ),
  );

}
