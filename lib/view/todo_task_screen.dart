import 'dart:convert';

import 'package:demo/components/custom_button.dart';
import 'package:demo/components/custom_sizebox.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/custom_text.dart';
import '../utils/app_colors.dart';

class TodoTaskScreen extends StatefulWidget {
  const TodoTaskScreen({super.key});

  @override
  State<TodoTaskScreen> createState() => _TodoTaskScreenState();
}

class _TodoTaskScreenState extends State<TodoTaskScreen> {
  List todoList = [];

  var conroller = TextEditingController();

  addTodo() async {
    todoList.add(conroller.text);
    conroller.clear();
    var pref = await SharedPreferences.getInstance();
    pref.setString("todo", jsonEncode(todoList));

    setState(() {});

    // encode - string and decode - original
  }

  // List - todoList
  // String -

  // Arham

  getTodo() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString("todo");
    if (data != null) {
      todoList = jsonDecode(data);
      setState(() {});
    }
  }

  clearTodo() async {
    todoList.clear();

    Navigator.pop(context);
    var pref = await SharedPreferences.getInstance();
    pref.clear();
    setState(() {});
  }

  // deleteTodo()async{
  //    var pref = await SharedPreferences.getInstance();
  // }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text(
            'You want to Delete?',
            style: TextStyle(color: AppColors.redColor, fontWeight: FontWeight.bold),
          ),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to delete you todo?'),
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            MaterialButton(
              color: AppColors.redColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                clearTodo();
              },
              child: Text(
                "Delete",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    getTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Todo App!",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  if (todoList.isNotEmpty)
                    IconButton(
                        onPressed: () {
                          _showMyDialog();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.red,
                        ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    onSubmitted: (c) {
                      addTodo();
                    },
                    controller: conroller,
                    decoration: InputDecoration(
                        hintText: "Enter your Todo",
                        border: OutlineInputBorder()),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      addTodo();
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    height: 55,
                    minWidth: 55,
                    color: AppColors.primaryColor
                  ),



                ],
              ),

              
              SizedBox(
                height: 20,
              ),
              todoList.isEmpty
                  ? Text(
                      "No Todo added!",
                      style: TextStyle(fontSize: 30),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: todoList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          // height: 50,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: Text(todoList[index])),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        todoList.removeAt(index);
                                      });
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                    height: 45,
                                    minWidth: 45,
                                    color: AppColors.redColor
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200),
                        );
                      }),


                      CustomText(color: Colors.red,fontSize: 10),
                      CustomText( ),
                      CustomText(color: Colors.red,),


                      CustomButton(text: "Welcome",onTap: (){

                      },),
                      vSize(30),
                        CustomButton(text: "Welcome",filled: false,onTap: (){

                      },),
            ],
          ),
        ),
      ),
    );
  }
}
