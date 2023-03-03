import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.lyen});
  final Widget lyen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (builder) => lyen));
      },
      child: const Icon(
        size: 30,
        Icons.navigate_next,
        color: Colors.black,
      ),
    );
  }
}
