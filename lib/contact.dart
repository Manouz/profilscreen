import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profilscreen/button.dart';
import 'package:profilscreen/convertisseur.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(children: [
            const CircleAvatar(
              backgroundColor: Color.fromARGB(96, 5, 0, 1),
              radius: 50,
            ),
            const SizedBox(height: 10),
            Text(
              "Adjé Aude-Esther A.",
              style: GoogleFonts.pacifico(fontSize: 40, color: Colors.white),
            ),
            SizedBox(
                height: 30,
                child: Text(
                  "FLUTTER DEVELOPPER",
                  style: GoogleFonts.aboreto(
                      fontSize: 18,
                      color: Colors.white,
                      wordSpacing: 3,
                      letterSpacing: 5),
                )),
            Container(
              margin: const EdgeInsets.only(right: 15, left: 15, top: 20),
              child: const TextField(
                decoration: InputDecoration(
                  //cela permet de bien ajuster le texte qu'on doit entrer a la ligne
                  //contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  //il permet d'entrer une couleur dans un textfield .Les deux syntaxes filled et fillColor doivent être forcément déclarés ensemble
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  hintText: "+225 07 47 46 83 11",
                  /*   enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(06.0)),
                    //il permet de donner une couleur de bordure au textfield
                    // borderSide: BorderSide(
                    //   width: 1,
                    //   color: Colors.pink,
                    // ),
                  ), */
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    hintText: "audeadje5@gmail.com",
                  ),
                )),
            const SizedBox(height: 30),
            //Padding(padding: EdgeInsets.only(left: 5, right: 5)),
            // Card(
            //     child: ListTile(
            //   leading: Icon(Icons.check_box_outline_blank_outlined),
            //   title: Text("ANGLAIS"),
            //   subtitle: Text("L'anglais ..."),
            //   trailing: Icon(Icons.delete_forever),
            // )),
            const CircleAvatar(
              radius: 25,
              //padding: const EdgeInsets.only(top: 90),
              child: NextButton(lyen: Convert()),
            )

            /* Container(
              color: Colors.orange,
              width: 100,
              height: 50,
              padding: const EdgeInsets.only(top: 90),
              child: const NextButton(lyen: Convert()),
            ), */
          ]),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
