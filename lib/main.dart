import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profilscreen/contact.dart';
import 'package:profilscreen/convertisseur.dart';
import 'package:profilscreen/header_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  //BuildContext get context => lien;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
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
        ]),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(children: [
            HeaderDrawer(),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Convert()));
              },
              child: BodyDrawerList(
                "Me contacter",
                Icons.person,
              ),
            ),
            SizedBox(height: 15),
            BodyDrawerList("Facebook", Icons.facebook),
            SizedBox(height: 15),
            BodyDrawerList("GridView", Icons.grid_3x3),
            SizedBox(height: 15),
            BodyDrawerList("Convertisseur", Icons.calculate),
            SizedBox(height: 15),
            BodyDrawerList("To-do List", Icons.list),
            SizedBox(height: 180),
            BodyDrawerList("Déconnexion", Icons.logout_outlined),
          ]),
        ),
      ),
    );
  }

  BodyDrawerList(String texte, IconData icon) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 40),
          Text(texte, style: GoogleFonts.kurale(fontSize: 30)),
        ],
      ),
    );
  }
}
