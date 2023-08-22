import 'package:flutter/material.dart';
import 'package:trip_app/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image: 'assets/one.jpg',
              title: 'Semien Mounains National Park',
              description:
                  'In the morning drive into the UNESCO World Heritage Site of the Simien Mountains National Park to see the incredible views across the Roof of Africa and perhaps some endemic wildlife. After lunch drive to Gondar.Distance - Debark to Gondar: 110 Kms. Driving time: 2 Hours'),
          makePage(
              page: 2,
              image: 'assets/two.jpg',
              title: 'King Fasilidies Bath',
              description:
                  'Spend the morning in the city of Gondar. Enjoy a history and architectural adventure at the UNESCO World Heritage site at Fasil Ghebbi. This is also known as the Royal Enclosure of castles and was built by a succession of kings and a queen when Gondar was Ethiopia’s capital for 200 years from the early 17th century. Other highlights include Emperor Fasilide’s ‘Bath’ and Debre Birhan Selassie church which is famous for the angelic faces painted on the ceiling.After lunch drive to Bahir Dar.Distance - Gondar to Bahir Dar: 180 Kms. Drive time: 3 Hours'),
          makePage(
              page: 3,
              image: 'assets/three.jpg',
              title: 'Explore the Roof of Africa',
              description:
                  'Drive the spectacular Ethiopian mountain route from Axum to Debark. This extraordinary mountain road has recently been rebuilt and makes for a fine driving adventure. There is still a stretch of less than 40 Kms awaiting final asphalting which may slow our journey but the views are superb.Distance - Axum to Debark: 260 Kms. Driving time: 6 Hours'),
          makePage(
              page: 4,
              image: '',
              title: 'Gambella National Park',
              description:
                  "Gambella National Park, also spelled Gambela National Park, is a 5,016 km2 (1,937 sq mi) large national park in Ethiopia.[2] It is the nation's largest national park and is located several hundred kilometers from Addis Ababa.It was established in 1974,but is not fully protected and has not been effectively managed for much of its history."),
        ],
      ),
    );
  }

  Widget makePage({
    image,
    title,
    description,
    page,
  }) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            height: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            page.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('/' + totalPage.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '(2300)',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(
                          description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.9,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
