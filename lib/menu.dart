import 'package:flutter/material.dart';

import 'class.dart';
class m1 extends StatelessWidget {
  final gts Gts;


  const m1({super.key,required this.Gts});




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        Column(
          children: [
            Image.asset((Gts.image).toString())
          ],
        )


    );
  }
}
