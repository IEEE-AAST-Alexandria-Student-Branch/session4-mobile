import 'package:flutter/material.dart';

import '../details/Details.dart';
import 'mylist.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: displayAppBar(context),
      backgroundColor: Color(0x1E0724EE),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: MyList(),
      ),
      // drawer: Drawer(),
    );
  }
}

AppBar displayAppBar(context){
  return AppBar(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    title: const Center(child: Text("IEEE", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
    leading: Icon(Icons.person),
    actions: [
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Details()),);
        },
          child: Icon(Icons.person)
      ),
      SizedBox(width: 10,),
      Icon(Icons.calendar_month),
      SizedBox(width: 10,),
    ],
  );
}