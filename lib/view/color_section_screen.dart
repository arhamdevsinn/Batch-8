import 'package:flutter/material.dart';

class ColorSectionScreen extends StatefulWidget {
  const ColorSectionScreen({super.key});

  @override
  State<ColorSectionScreen> createState() => _ColorSectionScreenState();
}

class _ColorSectionScreenState extends State<ColorSectionScreen> {
  // var selectedColor = Colors.red;

  var list = [
    Colors.green,
    Colors.cyan,
    Colors.pink,
    Colors.amber,
    Colors.green,
    Colors.purple,
    Colors.blue,
    Colors.orange,
    Colors.grey,
    Colors.brown,
    Colors.limeAccent,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            for (int i = 0; // part 1
                i < list.length; // part 2
                i++ // part 3
                )
              InkWell(
                onTap: () {
                  setState(() {
                  selectedIndex = i;
                  });
                },
                child: Container(
                  height: selectedIndex == i ? 300 : 200,
                  width: selectedIndex == i ? 300 : 200,
                  decoration: BoxDecoration(

                    boxShadow: [
                      selectedIndex == i ?
                      BoxShadow(
                        spreadRadius: 10,
                        color: const Color.fromARGB(255, 8, 255, 136),
                        blurRadius: 10
                      ) : BoxShadow()
                    ],
                      color: list[i],
                      border: Border.all(
                          color: selectedIndex == i
                              ? Colors.black
                              : Colors.transparent,
                          width: 5)),

                          child: selectedIndex == i ? Center(child: Text("Selected", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),)) : Container(),
                ),
              )
          ],
        ),
      ),
    );
  }
}
