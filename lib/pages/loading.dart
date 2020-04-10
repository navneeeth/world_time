import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {
//    //Simulate network request for a username
//    String username = await Future.delayed(Duration(seconds: 3), () {
//      return 'Yoshi';
//    });
//
//    //Simulate network request to get bio of the username
//    String bio = await Future.delayed(Duration(seconds: 2), () {
//      return 'Vegan Musician & egg collector';
//    });
//    print('$username--$bio');
      Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
      Map data = jsonDecode(response.body);
      print(data);
      print("\n");
      print(response.body);
      print("\n");
      print(data['title']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
