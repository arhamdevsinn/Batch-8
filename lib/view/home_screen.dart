import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          Image.asset("arham/car.jpg"),
          Text("arhamdevsinn@gmail.com")
        ],),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
        // leading: InkWell(
        //   onTap: (){
        //     Navigator.pop(context);
        //   },
        //   child: Icon(Icons.back_hand, color: Colors.white,)),
        actions: [
          Icon(Icons.search, color: Colors.white,),
          SizedBox(width: 10,),
            Icon(Icons.shopping_basket_outlined, color: Colors.white,),
             SizedBox(width: 10,),
        ],
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Image.asset("arham/car.jpg", height: 300,width: 900,fit: BoxFit.cover,),
                Image.asset("arham/car2.jpeg", height: 300,width: 900,fit: BoxFit.cover,),
                Image.asset("arham/car.jpg", height: 300,width: 900,fit: BoxFit.cover,),
                Image.asset("arham/car2.jpeg", height: 300,width: 900,fit: BoxFit.cover,),
            
            
              ],),
        
            ),
              
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  
                  color: Colors.yellow,
                  height: 100,
                  child: 
                  Row(children: [
                    CircleAvatar(),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Item 0"),
                    Text("Item Description"),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.menu_rounded)
                  ],),
                ),
              )
          ,
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          //       child: Container(
          //         height: 50,
          //         child: 
          //         Row(children: [
          //           CircleAvatar(),
          //           SizedBox(width: 20,),
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text("Item 0"),
          //           Text("Item Description"),
          //             ],
          //           ),
          //           Spacer(),
          //           Icon(Icons.menu_rounded)
          //         ],),
          //       ),
          //     )
          // ,
          ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
             ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
             ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
             ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
             ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
             ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
             ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
             ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
             ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),   ListTile(
            leading: CircleAvatar(),
            title: Text("Item 3"),
            subtitle: Text("Item Descripton"),
            trailing: Icon(Icons.menu),
          ),
          
          //  ListTile(
          //   leading: CircleAvatar(),
          //   title: Text("Item 4"),
          //   subtitle: Text("Item Descripton"),
          //   trailing: Icon(Icons.menu),
          // )
          
          ],
        ),
      ),
    );
  }
}