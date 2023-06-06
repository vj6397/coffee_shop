import 'package:flutter/material.dart';
import 'constants.dart';
import 'detailsPage.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _Sel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, top: 15.0),
        children: <Widget>[
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Welcome, Nadia',
                style: ktextStylevar.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 30.0),
                // TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontFamily: 'varela',
                //     fontSize: 30.0,
                //     color: Color(0xff473d3a)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage('assets/model.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(right: 45.0),
            child: Text(
              'Let\'s select the best taste for your next coffee break!',
              style: ktextStylenun.copyWith(
                  fontSize: 17.0, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 35.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Taste of the Week',
                style: ktextStylevar.copyWith(fontSize: 17.0),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text('See All',
                    style: ktextStylevar.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffcec7c4))),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                    '\$4.99',
                    false),
                _coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',
                    false)
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Explore nearby',
                style: ktextStylevar.copyWith(fontSize: 17.0),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text('See All',
                    style: ktextStylevar.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffcec7c4))),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImage('assets/coffee.jpg'),
                _buildImage('assets/coffee2.jpg'),
                _buildImage('assets/coffee3.jpg'),
              ],
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _Sel,
          selectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(color: Colors.black38),
          unselectedLabelStyle: TextStyle(color: Colors.black38),
          iconSize: 27.0,
          onTap: (int index) {
            setState(() {
              _Sel = index;
            });
          }),
    );
  }

  _buildImage(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100.0,
        width: 175.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
        ),
      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName,
      String desc, String prize, bool isFav) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(height: 335.0),
                Positioned(
                  top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0, right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xffdab68c)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 60.0),
                        Text(shopName + '\'s',
                            style: ktextStylenun.copyWith(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(height: 10.0),
                        Text(coffeeName,
                            style: ktextStylevar.copyWith(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(height: 10.0),
                        Text(desc,
                            style: ktextStylenun.copyWith(
                                fontSize: 14.0, color: Colors.white)),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(prize,
                                style: ktextStylevar.copyWith(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff3a4742))),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(Icons.favorite,
                                    color: isFav ? Colors.red : Colors.grey,
                                    size: 20.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60.0,
                  top: 25.0,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.contain),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              },
              child: Container(
                height: 50.0,
                width: 225.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xff473d3a)),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: ktextStylenun.copyWith(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
