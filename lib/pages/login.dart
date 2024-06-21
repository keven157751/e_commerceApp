import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 73, 126, 233),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              width: 300,
              height: 600,
              child: Column(
                children: [
                  const Text('Login'),
                  TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage(
                                    title: 'Holla',
                                  ))),
                      child: const Text('Ok'))
                  // TextField(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
