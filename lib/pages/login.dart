import 'package:flutter/material.dart';
import 'package:flutterapp/comum_widgets/text_input.dart';
import 'package:flutterapp/comum_widgets/variables.dart';
import 'package:flutterapp/main.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 30.0),
                child: ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: double.infinity,
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.all(margemDefault),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(margemDefault),
                            child: Column(
                              children: [
                                Text(
                                  'Login E-commerce',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                Text('Please sign in to continue'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                margemDefault, 8.0, margemDefault, 8.0),
                            child: InputText(
                              labelText: 'Enter your email',
                              suffixIcon: const Icon(Icons.email),
                              filled: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                margemDefault, 8.0, margemDefault, 8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                suffixIcon:
                                    const Icon(Icons.lock_outline_rounded),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50)),
                                // labelText: 'Enter your email',
                                hintText: 'Enter your password',
                                filled: true,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text('Forgot password?')),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FilledButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyHomePage(
                                                  title: 'Holla'))),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('LOGIN'),
                                      Icon(Icons.arrow_forward)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
