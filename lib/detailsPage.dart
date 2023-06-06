import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:community_material_icon/community_material_icon.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height - 20.0,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xfff3b2b7)),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2 - 20.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0)),
                        color: Colors.white),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 + 25.0,
                left: 15.0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      Text('Preparation time',
                          style: ktextStylenun.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Color(0xff726b68))),
                      SizedBox(height: 7.0),
                      Text('5min',
                          style: ktextStylenun.copyWith(
                              fontSize: 14.0, color: Color(0xFFC6C4C4))),
                      SizedBox(height: 10.0),
                      Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          )),
                      SizedBox(height: 10.0),
                      Text('Ingredients',
                          style: ktextStylenun.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Color(0xff726b68))),
                      SizedBox(height: 15.0),
                      Container(
                        height: 95.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            BuildIngredientItem(
                                'Water',
                                Icon(FeatherIcons.droplet,
                                    color: Colors.white, size: 20.0),
                                Colors.blue),
                            BuildIngredientItem(
                                'Brewed Espresso',
                                Icon(FeatherIcons.target,
                                    size: 18.0, color: Colors.white),
                                Color(0xFF615955)),
                            BuildIngredientItem(
                                'Sugar',
                                Icon(FeatherIcons.box,
                                    size: 18.0, color: Colors.white),
                                Color(0xFFF39595)),
                            BuildIngredientItem(
                                'Toffee Nut Syrup',
                                Icon(CommunityMaterialIcons.peanut,
                                    size: 18.0, color: Colors.white),
                                Color(0xFF8FC28A)),
                            BuildIngredientItem(
                                'Natural Flavors',
                                Icon(CommunityMaterialIcons.leaf_maple,
                                    size: 18.0, color: Colors.white),
                                Color(0xFF3B8079)),
                            BuildIngredientItem(
                                'Vanilla Syrup',
                                Icon(
                                    CommunityMaterialIcons.flower_tulip_outline,
                                    size: 18.0,
                                    color: Colors.white),
                                Color(0xFFF8B870)),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          )),
                      SizedBox(height: 10.0),
                      Text('Nutrition Information',
                          style: ktextStylenun.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Color(0xff726b68))),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Text('Calories',
                              style: ktextStylenun.copyWith(
                                  fontSize: 14.0, color: Color(0xFFd4d3d2))),
                          SizedBox(width: 15.0),
                          Text('250',
                              style: ktextStylenun.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                  color: Color(0xff716966))),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Text('Proteins',
                              style: ktextStylenun.copyWith(
                                  fontSize: 14.0, color: Color(0xFFd4d3d2))),
                          SizedBox(width: 15.0),
                          Text('10g',
                              style: ktextStylenun.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                  color: Color(0xff716966))),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Text('Caffeine',
                              style: ktextStylenun.copyWith(
                                  fontSize: 14.0, color: Color(0xFFd4d3d2))),
                          SizedBox(width: 15.0),
                          Text('150mg',
                              style: ktextStylenun.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                  color: Color(0xff716966))),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          )),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.only(right: 25.0),
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: Color(0xff473d3a)),
                          child: Center(
                            child: Text(
                              'Make Order',
                              style: ktextStylenun.copyWith(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0)
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 9,
                left: 90.0,
                child: Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/pinkcup.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                  top: 25.0,
                  left: 15.0,
                  child: Container(
                    height: 300.0,
                    width: 250.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 150.0,
                              child: Text(
                                'Caremal Macchiato',
                                style: ktextStylevar.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.white),
                              child: Icon(Icons.favorite,
                                  size: 18.0, color: Colors.red),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          width: 170.0,
                          child: Text(
                              'Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.',
                              style: ktextStylenun.copyWith(
                                  fontSize: 15.0, color: Colors.white)),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xff473d3a)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('4.2',
                                        style: ktextStylenun.copyWith(
                                            fontSize: 13.0,
                                            color: Colors.white)),
                                    Text('/5',
                                        style: ktextStylenun.copyWith(
                                            fontSize: 13.0,
                                            color: Color(0xff7c7573))),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  Container(height: 35.0, width: 80.0),
                                  Positioned(
                                    left: 40.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          border: Border.all(
                                              color: Color(0xfff3b2b7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('assets/man.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          border: Border.all(
                                              color: Color(0xfff3b2b7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/model.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          border: Border.all(
                                              color: Color(0xfff3b2b7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/model2.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ]),
                                SizedBox(height: 3.0),
                                Text(
                                  '+ 27 more',
                                  style: ktextStylenun.copyWith(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  BuildIngredientItem(
    String name,
    Icon iconName,
    Color bgcolor,
  ) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: bgcolor,
              ),
              child: Center(
                child: iconName,
              )),
          SizedBox(height: 4.0),
          Container(
            width: 60.0,
            child: Center(
              child: Text(name,
                  style: ktextStylenun.copyWith(
                      fontSize: 12.0,
                      color: Color(0xffc2c0c0),
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
