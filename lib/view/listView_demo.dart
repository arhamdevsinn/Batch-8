import 'package:flutter/material.dart';


class ListViewDemo extends StatelessWidget {
  var menu = [

    {
      "name":"Queen",
      "username":"𝘽𝙖𝘽𝙮_𝙌𝙪𝙚𝙚𝙣👑❤",
       "image":"arham/girl.jpeg",
      "followText":"Followed by itx__muskan22 + 1 more"
    }
    
    ,{
      "name":"Ahmad",
      "username":"موسیٰ حینف",
      "image":"arham/car.jpg",
       "followText":"ollowed by baneen.khalid___"
    },
     {
      "name":"Arham",
      "username":"𝘽𝙖𝘽𝙮_𝙌𝙪𝙚𝙚𝙣👑❤",
       "image":"arham/girl.jpeg",
      "followText":"Followed by itx__muskan22 + 1 more"
    }
    
    ,{
      "name":"Ali",
      "username":"موسیٰ حینف",
      "image":"arham/car.jpg",
       "followText":"ollowed by baneen.khalid___"
    }
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: AssetImage(menu[index]["image"].toString()),
              // radius: 100,
            ),
            title: Text(menu[index]["name"].toString(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(menu[index]["username"].toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text(menu[index]["followText"].toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),),
              ],
            ),
            trailing: MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              height: 40,
              minWidth: 100,
              onPressed: (){}, child: Text("Follow", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
          );
      } ),
    );
  }
}