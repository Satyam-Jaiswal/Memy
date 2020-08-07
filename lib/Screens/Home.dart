import 'package:Memy/Widget/bottonBar.dart';
import 'package:Memy/models/meme.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Stream<List<Meme>> listmemes;


  Widget get middleSection => Expanded(
    child: MemeViewer(),      
      );

   Widget MemeViewer(){
     return Container(
       child: Center(
        child: StreamBuilder(
          initialData: List<Meme>(),
          stream: listmemes,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) return CircularProgressIndicator();  
            // List<Meme> meme = snapshot.data;
           
            return CircularProgressIndicator();
          
        }
      )
    ) ,
      //  child: Center(child: CircularProgressIndicator()),
     );
   }   


  Widget get topSection => Container(
        height: 100.0,
        padding: EdgeInsets.only(bottom: 15.0),
        alignment: Alignment(0.0, 1.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Following'),
              Container(
                width: 15.0,
              ),
              Text('Top Rated',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold))
            ]),
      );

  Widget screenUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        topSection,
        BottomBar(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              middleSection,
            ],
          ),
          screenUI(),
        ],
      ),
    );
  }
}
