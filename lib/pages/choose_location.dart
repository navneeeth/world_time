import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  //int counter=0;
  void getData() async {
    //Simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Yoshi';
    });

    //Simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
    return 'Vegan Musician & egg collector';
    });
    print('$username--$bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('initState function ran!');
  }
  @override
  Widget build(BuildContext context) {
    //print('build function ran!');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
