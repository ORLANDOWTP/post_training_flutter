import 'package:flutter/material.dart';
class ItemDetail extends StatelessWidget{
  String name;
  String image;
  String desc;
  ItemDetail(this.name,this.image,this.desc);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text(name),),
        body: Column(
          children: [
            Image(image: AssetImage(image),height: 300,width: 300,),
            Container(
              child: Text('Description',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),),
              margin: EdgeInsets.only(top: 20,bottom: 20),
            ),
            Text(desc)
          ],
        ),
    );
  }
}