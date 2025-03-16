import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// State Full

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  addCount() async {
    count = count + 2;
    var pref = await SharedPreferences.getInstance();
    pref.setInt("count", count);
    setState(() {});
  }

    removeCount() async {
    count = count - 2;
    var pref = await SharedPreferences.getInstance();
    pref.setInt("count", count);
    setState(() {});
  }


   clearCount() async {
    count = 0;
    var pref = await SharedPreferences.getInstance();
    pref.setInt("count", count);
    setState(() {});
  }

  getCount() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getInt("count");
    if (data != null) {
      count = data;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();

    getCount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: count > 10 ? Colors.yellow : Colors.white,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (count < 20)
            FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.blue,
                onPressed: () async {
                  addCount();
                }),
          FloatingActionButton(
              child: Icon(Icons.remove),
              backgroundColor: Colors.blue,
              onPressed: () {
              removeCount();
              }),

               FloatingActionButton(
              child: Icon(Icons.close),
              backgroundColor: Colors.blue,
              onPressed: () {
             clearCount();
              }),
        ],
      ),
      body: Center(
          child: Text(
        count.toString(),
        style: TextStyle(
            fontFamily: count > 10 ? "fiji" : "Baloo",
            fontSize: count > 10 ? 500 : 200,
            color: (count > 5)
                ? ((count > 10)
                    ? (count > 15 ? (Colors.blue) : Colors.red)
                    : Colors.green)
                : Colors.black),
      )),
    );
  }
}

// if(count > 5){
// if(count > 10){
//         if(count > 15){
//           pink
//         }else{
// //   // blue

//         }
// }else{
// //   red

// }
// }
// else
// {
// green
// }

// (count > 5) ? (count > 10) ?  (count > 15) ? pink : blue  : red :  green
