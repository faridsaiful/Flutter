import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 170, 228, 10)),
              child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Google-flutter-logo.png/799px-Google-flutter-logo.png',
              width: 300,
              height: 300,
              ),   
            )
            
          ]
        )
      )
    );
  }
}
  
  
  
