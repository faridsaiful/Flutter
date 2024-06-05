import 'package:flutter/material.dart';
//import 'package:myapp/loginPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home page'),
        ),
        body: Center(
          child: Column(
            children: [
              //Text('Home'),
              SizedBox(height: 50),
              Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(onPressed: () {}, child: Text('Kembali')),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('Profil')),
                  ])
            ],
          ),
        ),
    );
  }
}
