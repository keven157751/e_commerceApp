import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/comum_widgets/card_product.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
      ),
      itemCount: 4,
      padding: const EdgeInsets.all(5),
      itemBuilder: (BuildContext context, int index) {
        return const CardProduct();
      },
    );
    // return Column(
    //   children: [
    //     const Padding(
    //       padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 50),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Expanded(
    //             child: SearchBar(
    //               leading: Icon(Icons.search),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),

    //     // const Flex(
    //     //   direction: Axis.vertical,
    //     //   children: [
    //     //     CardProduct(),
    //     //     CardProduct(),
    //     //     CardProduct(),
    //     //   ],
    //     // ),
    //   ],
    // );
  }
}
