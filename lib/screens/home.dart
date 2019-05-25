import 'dart:async';

import 'package:codelab_h1/ui_components/ProductCard.dart';
import 'package:codelab_h1/ui_components/h1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: Headerku(),
          ),
          SliverGrid(
            delegate: SliverChildListDelegate(
              [
                ProductCard(),
                ProductCard(),
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
        ],
      ),
    );
  }
}

class Headerku extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Header();
  }

  @override
  double get maxExtent => 400;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  var size = 50;

  @override
  void initState() {
    super.initState();
    Timer timer = Timer.periodic(Duration(seconds: 2), (time) {
      print("${time.tick}");
      if (size == 50)
        size = 0;
      else
        size = 50;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
//    Image.network(
//      "https://i0.wp.com/kabarwisata.com/wp-content/uploads/2017/09/pantai-kuta.jpg",
//      fit: BoxFit.cover,
//      height: size,
//      width: double.infinity,
//    )
    return Stack(
      children: <Widget>[
        AnimatedSize(
          duration: Duration(seconds: 1),
          vsync: this,
          curve: Curves.easeInOut,
          child: Positioned(
            top: 0-size,
            left: 0-size,
            right: 0-size,
            bottom: 0-size,
            child: Image(
              height: double.infinity,
              width: double.infinity,
              image: NetworkImage(
                "https://i0.wp.com/kabarwisata.com/wp-content/uploads/2017/09/pantai-kuta.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white54,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ], end: Alignment.topCenter, begin: Alignment.bottomCenter),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 10,
          right: 10,
          child: H1(
            "PANTAI KUTA",
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 30,
          left: 13,
          right: 10,
          child: Text("LOMBOK (ID)",
              style: TextStyle(
                color: Colors.blueGrey,
              )),
        ),
      ],
    );
  }
}
