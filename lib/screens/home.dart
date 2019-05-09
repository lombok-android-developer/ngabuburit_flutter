import 'package:codelab_h1/ui_components/h1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network(
                      "https://i0.wp.com/kabarwisata.com/wp-content/uploads/2017/09/pantai-kuta.jpg",
                      fit: BoxFit.cover,
                      height: 400,
                    ),
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.black87,
                              Colors.black54,
                              Colors.black54,
                              Colors.black12,
                              Colors.black12,
                              Colors.transparent
                            ],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 10,
                      right: 10,
                      child: H1(
                        "PANTAI KUTA",
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 13,
                      right: 10,
                      child: Text(
                        "LOMBOK (ID)",
                        style: TextStyle(color:Colors.white,)
                      ),
                    ),
                  ],
                ),
                H1(
                  "Home bro....",
                  color: Colors.black,
                ),
                H1(
                  "Home bro....",
                  color: Colors.blue,
                ),
                H1(
                  "Home bro....",
                  color: Colors.green,
                ),
                H1(
                  "Home bro....",
                  color: Colors.red,
                ),
                H1(
                  "Home bro....",
                  color: Colors.black,
                ),
                H1(
                  "Home bro....",
                  color: Colors.blue,
                ),
                H1(
                  "Home bro....",
                  color: Colors.green,
                ),
                H1(
                  "Home bro....",
                  color: Colors.red,
                ),
                H1(
                  "Home bro....",
                  color: Colors.black,
                ),
                H1(
                  "Home bro....",
                  color: Colors.blue,
                ),
                H1(
                  "Home bro....",
                  color: Colors.green,
                ),
                H1(
                  "Home bro....",
                  color: Colors.red,
                ),
                H1(
                  "Home bro....",
                  color: Colors.black,
                ),
                H1(
                  "Home bro....",
                  color: Colors.blue,
                ),
                H1(
                  "Home bro....",
                  color: Colors.green,
                ),
                H1(
                  "Home bro....",
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: AppBar(
              elevation: 0,
              title: H1(
                "Home bro....",
                color: Colors.white,
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
