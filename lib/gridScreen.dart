import 'package:flutter/material.dart';

class GrilleImage extends StatelessWidget {
  const GrilleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            GridView.builder(
              padding: EdgeInsets.only(top: 250),
              itemCount: 6,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 70,
                  color: Colors.blue,
                );
              },
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              //child: NextButton(lyen: GrilleImage()),
            ),
          ],
        ),
      ),
    );
  }
}
