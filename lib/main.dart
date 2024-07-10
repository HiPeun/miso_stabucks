import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miso_starbucks/starbucks.dart';

import 'miso.dart';

void main(){


  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppListPage(),
    );
  }
}

class AppListPage extends StatelessWidget {
  const AppListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text("1. Miso", style: TextStyle(fontSize: 24),),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> Miso())),
            
            ),
            ListTile(
              title: Text("2. StarBucks", style: TextStyle(fontSize: 24),),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> Starbucks())),
            )
          ],
        ),
      ),
    );
  }
}
