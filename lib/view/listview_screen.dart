import 'package:flutter/material.dart';


class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6 , childAspectRatio: 0.6, mainAxisSpacing: 10, crossAxisSpacing: 10 ),
        itemCount: 1000,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: index % 10 == 0 ? Colors.blue :  index % 2 == 0 ? Colors.orange :  Colors.yellow, width: 10),              
                image: DecorationImage(image: AssetImage("arham/car.jpg"), fit: BoxFit.cover )
              ),
              child: Center(child: Text("Arham ${index + 1}", style: TextStyle(fontSize: 50,
              color: index == 999 || index == 0 ? Colors.red : Colors.black,
               fontWeight: FontWeight.bold),)),
            ),
          );
          // return Text("Arham", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),);
        },

      )
    );
  }
}



// 17 / 2  


// 18 / 2 