import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SBS"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text(
                  "User",
                  style: GoogleFonts.mcLaren(fontSize: 30.0),
                ),
                accountEmail: Text("user@mail.com")),
            ListTile(
              title: Text(
                "Favoritos",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.favorite, color: Colors.black),
              tileColor: Colors.white,
            ),
            ListTile(
              title: Text(
                "Procurar",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.search, color: Colors.white),
              tileColor: Colors.black,
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(),
                    Container(
                      padding: EdgeInsets.all(25.0),
                      child: Text("Fabiana - Manicure/Pedicure"),
                    ),
                    Row(
                      children: [
                        Container(
                            child: RatingBarIndicator(
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        )),
                        Container(child: Text("Avaliações: 100")),
                      ],
                    ),
                    Container(),
                  ],
                ),
                Container()
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}
