import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profilscreen/gridScreen.dart';
import 'button.dart';

class Convert extends StatelessWidget {
  const Convert({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            GridView.builder(
              padding: EdgeInsets.only(top: 100),
              itemCount: 6,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  width: 10,
                  height: 70,
                  color: Colors.blue,
                );
              },
            ),
            /*  Container(
              padding: EdgeInsets.only(top: 10),
              child: NextButton(lyen: GrilleImage()),
            ), */
          ],
        ),
      ),
    );
  }
}
