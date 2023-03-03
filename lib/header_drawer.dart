import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.teal,
      child: Column(
        children: [
          Text("Adjé Aude-Esther Ablan",
              style: GoogleFonts.kurale(fontSize: 30, color: Colors.amber)),
        ],
      ),
    );
  }
}
