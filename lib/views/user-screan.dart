import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/models/todoModle.dart';

import '../services/userService.drt.dart';

class Screan extends StatefulWidget {
  const Screan({super.key});

  @override
  State<Screan> createState() => _ScreanState();
}

class _ScreanState extends State<Screan> {


  List<Model> todo=[];
  bool isLoading = true;
  Future<void> getTodoFromApi() async {
  todo=await Services().getTodo();
  isLoading = false;
  setState(() {
  });
  }
  @override
  void initState() {
    super.initState();
    getTodoFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading?Center(
        child:CircularProgressIndicator(),)
          : ListView.builder(
          itemCount: todo.length
          ,itemBuilder: (BuildContext context, int index){
          return ListTile(
          title: Text(todo[index].title??"--"),
          );
    },
    ),
      );
  }
}
