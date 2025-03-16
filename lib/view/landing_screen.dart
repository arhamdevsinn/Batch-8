import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    height: 3,
                  ),
                  Text("Home")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    height: 3,
                  ),
                  Text("Explore")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.blue[900],
                    size: 30,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(color: Colors.blue[900]),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_alarms_rounded),
                  SizedBox(
                    height: 3,
                  ),
                  Text("Clock")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    height: 3,
                  ),
                  Text("Profile")
                ],
              )
            ],
          ),
        ),

        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.home),
        //     label: "Home"
        //   ),
        //    BottomNavigationBarItem(
        //     icon: Icon(Icons.settings),
        //     label: "Setting"
        //   ),
        //     BottomNavigationBarItem(
        //     icon: Icon(Icons.person),
        //     label: "Profile"
        //   )
        // ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Mission"), Icon(Icons.notifications)],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.pink, width: 2),
                              image: DecorationImage(
                                  image: AssetImage("arham/girl.jpeg"))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mariya Arshad",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(Icons.person),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " | 18, june - 2004",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(5),
                      minHeight: 13,
                      color: Colors.pink,
                      value: 0.7,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enlargeFactor: 0.1,
                        reverse: true,
                        autoPlayCurve: Curves.easeInOut,
                        scrollDirection: Axis.horizontal,
                        height: 100.0,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                        autoPlayInterval: Duration(milliseconds: 700),
                      ),
                      items: ["arham/car.jpg", "arham/car2.jpeg"].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Image.asset(
                              i,
                              fit: BoxFit.cover,
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://media.istockphoto.com/id/1323529010/vector/fire-vector-isolated.jpg?s=612x612&w=0&k=20&c=ta6bKkXZDuqy2H3tRhR79sSl_-fdGhKyoenbbjEr3l0=",
                                  height: 50,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Fire",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSPro82HC4iDKyKjyjsftks3LMMFoyXjmsCQ&s",
                                  height: 35,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Fire",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://thumbs.dreamstime.com/b/glass-orange-ball-precious-pearl-glossy-realistic-ball-d-sphere-abstract-vector-illustration-highlighted-glass-orange-ball-344222999.jpg",
                                  height: 45,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Fire",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 300,
                // color: Colors.red,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.grey.shade200,
                      Colors.grey.shade400,
                    ])),

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Habbits",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "17, Nov 2024",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Coding",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.cloudy_snowing,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Coding",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text("17 Nov, 2024"),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.download_done_sharp),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.more_vert_rounded)
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
