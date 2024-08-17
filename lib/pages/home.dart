import 'package:flutter/material.dart';
import 'package:electroshop/widget/support_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/watch.png",
    "images/TV.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 222, 222),
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey,Varnith", style: AppWidget.boldTextFeildStyle()),
                    Text("Good Morning", style: AppWidget.lightTextFeildStyle()),
                  ],
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/boy.jpg",
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ))
              ],
            ),
            SizedBox(height: 30.0),
            Container(
                // padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Products",
                      hintStyle: AppWidget.lightTextFeildStyle(),
                      prefixIcon: Icon(Icons.search, color: Colors.black)),
                )),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Color(0xFFfd6f3e),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 130,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFFD6F3E),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "All",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Expanded(
                  child: Container(
                    height: 130,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return categoryTile(image: categories[index]);
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Products",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 230,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      Image.asset(
                        "images/headphone2.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Text("Headphone",
                          style: AppWidget.semiboldTextFeildStyle()),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ 500",
                              style: AppWidget.orangeSemiboldTextFeildStyle()),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFD6F3E),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      Image.asset(
                        "images/watch2.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Text("Apple watch",
                          style: AppWidget.semiboldTextFeildStyle()),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ 100",
                              style: AppWidget.orangeSemiboldTextFeildStyle()),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFD6F3E),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [
                      Image.asset(
                        "images/laptop2.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Text("laptop", style: AppWidget.semiboldTextFeildStyle()),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ 1000",
                              style: AppWidget.orangeSemiboldTextFeildStyle()),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFD6F3E),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class categoryTile extends StatelessWidget {
  String image;
  categoryTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 90,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          // SizedBox(height: 10,),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
