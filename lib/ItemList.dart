import 'package:flutter/material.dart';
import 'package:flutter_app/ItemDetail.dart';

class ItemList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ItemListState();
  }
}

class ItemListState extends State<ItemList> {
  var name = [
    'Akudama Drive',
    'Black Clover',
  ];
  var image = [
    'assets/akudama-drive.jpg',
    'assets/black-clover.jpg',
  ];
  var desc = [
    'Long ago, a war broke out in Japan that pitted Kantou against Kansai and divided the country.'
        ' Kansai became dependent on Kantou, but slowly the police and government began losing control'
        ' of Kansai to criminals known as Akudama.',
        'In a world where magic is everything, Asta and Yuno are both found abandoned at a church on the same day. While Yuno is '
        'gifted with exceptional magical powers, Asta is the only one in this world without any. At the age of fifteen, '
        'both receive grimoires, magic books that amplify their holder’s magic. Asta’s is a rare Grimoire of Anti-Magic '
        'that negates and repels his opponent’s spells. Being opposite but good rivals, Yuno and Asta are ready for the '
        'hardest of challenges to achieve their common dream: to be the Wizard King. Giving up is never an option!'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: ListView(
        children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Card(
                child: ListTile(
                  leading: Image.asset(image[0]),
                  title: Text(name[0]),
                  trailing: RaisedButton(
                    child: Text('Details'),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder){
                        return ItemDetail(name[0], image[0], desc[0]);
                      }));
                    },
                  ),
                ),
              )
            ),
          Container(
              margin: EdgeInsets.all(20),
              child: Card(
                child: ListTile(
                  leading: Image.asset(image[1]),
                  title: Text(name[1]),
                  trailing: RaisedButton(
                    child: Text('Details'),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder){
                        return ItemDetail(name[1], image[1], desc[1]);
                      }));
                    },
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
