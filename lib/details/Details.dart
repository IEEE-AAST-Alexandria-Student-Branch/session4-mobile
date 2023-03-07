import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:session21/home/data.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x1E0724EE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: "to details",
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: Image.network(dataList[pressedIdx].imageurl,),
            ),
          ),
          SizedBox(height: 15,),
          Text(dataList[pressedIdx].desc,style: TextStyle(color: Colors.white, fontSize: 20),),
        ],
      ),
    );
  }
}
