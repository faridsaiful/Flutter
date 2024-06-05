// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, avoid_print, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:myapp/homePage.dart';
import 'package:myapp/registerPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final usernameControler = TextEditingController();
  final passwordControler = TextEditingController();

  final String _loginUrl = 'https://fakestoreapi.com/auth/login';

  Future<void> Login(
      BuildContext context, String username, String password) async {
    final response = await http.post(Uri.parse(_loginUrl), body: {
      'username': usernameControler.text,
      'password': passwordControler.text,
    });
    print("response: ${response.body}");
    if (response.statusCode == 200) {
      //List<dynamic> users = json.decode(response.body);
      print("response: ${response.body}");
      final data = json.decode(response.body);
      print('Login sukses');
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Homepage(),
            ));
      
    } else {
      //Handle login failed
      print('Login failed: ${response.statusCode}');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Server Error'),
          content: Text('Login Failed'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
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
              //--------------------------------------------------------------------------
              TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'User name tidak boleh kosong';
                    }
                    return null;
                  },
                  controller: usernameControler,
                  decoration: InputDecoration(
                      labelText: 'User Name', border: OutlineInputBorder())),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                  controller: passwordControler,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder())),
              SizedBox(
                height: 30,
              ),
              //--------------------------------------------------------------------------
              Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registerpage()));
                        },
                        child: Text('Register')),
                    SizedBox(
                      width: 60,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Login(context, usernameControler.text,
                              passwordControler.text);
                        },
                        child: Text('Login')),
                  ])
            ]),
          ),
        ),
      ),
    );
  }
}
