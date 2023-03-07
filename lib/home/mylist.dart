import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:session21/details/Details.dart';
import 'package:session21/home/data.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            pressedIdx = index;
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Details(),));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                      child: Hero(
                        tag: "to details",
                        child: SizedBox(
                          width: double.infinity,
                            height: 200,
                            child: Image.network(dataList[index].imageurl,fit: BoxFit.cover,),
                        ),
                      )
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100000), color: Colors.grey),
                      child: Icon(Icons.favorite,
                        color: dataList[index].favorite == true ? Colors.red : Colors.black12,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(dataList[index].desc,style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
    );
  }
}
