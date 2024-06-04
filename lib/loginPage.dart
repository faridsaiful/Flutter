import 'package:flutter/material.dart';
import 'package:myapp/homePage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          Container(
            child: Image.asset("assets/images/logo.png"),
            width: 200,
            height: 200,
            //decoration: BoxDecoration(color: Color.fromARGB(255, 170, 228, 10)),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'User Name', border: OutlineInputBorder())),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder())),
          SizedBox(
            height: 30,
          ),
          Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Text('Register')),
                SizedBox(
                  width: 60,
                ),
                ElevatedButton(onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Text('Login')),
              ])
        ]),
      ),
    );
  }
}
