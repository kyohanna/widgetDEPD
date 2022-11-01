import 'dart:svg';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget{
  const myWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isClicked = false;

@override
Widget build(BuildContext context){
  return MaterialApp(title: 'Flutter Demo', theme: ThemeData(brightness: Brightness.dark,primaryColor: Colors.lightBlue[800]),
  home: Scaffold(
    appBar:AppBar(title: Text('Assigment1'),
    ),
    body: Stack (
      children: <Widget>[Container(decoration: BoxDecoration(gradient: LinearGradientElement(colors: [Colors.red, Colors.purple])),
      ),
      Container(
        child: Column(children: <Widget> [Flexible(flex: 2, child: Container(decoration: BoxDecoration(image:DecorationImage(fit: BoxFit.cover,image: AssetImage('image.png'))),
        ),
        ),
        Flexible(flex: 1, child: Row(children: <Widget>[Flexible(child: Container(margin: EdgeInsets.all(5),
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
        image: DecorationImage(fit: BoxFit.cover,image: AssetImage('image/image.png'))),
        )),
        Flexible(child: Container(margin: EdgeInsets.all(5),decoration: BoxDecoration(borderRadius.circular(20,image: DecorationImage(fit:BoxFit.cover, image:AssetImage('image/image.png'))),
        )))
        ],
        )),
        Flexible(
        flex: 7,child: Container(child: ListView(children: <Widget>[
          Container(child: Text( "aku berada di tepi pantai, menatap ke arah bulan, dan berpikir, bagaimana bulan yang secantik itu dapat bertahan dalam kesendirian, sedangkan satelit di planet yang berbeda memiliki teman yang saling menemani, ingin sekali seperti bulan, meskipun sendiri, namun tetap dapat menyinari sekelilingnya.cahaya bulan menyuruhku untuk berjalan disekitar pantai, tak sadar aku menemukan sekelompok orang di sepinya pantai itu, kami saling berkenalan dan bercerita sedikit, ternyata kami memiliki banyak kesamaan dan berpendapat yang sama, setelah percakapan itu, kami memandangi indahnya laut malam, ditemani deburan ombak yang seakan-akan memanggil kami untuk mendatanginya.",
            style: TextStyle(color: Colors.white,
             )),
                )
               ],
                ),
                 ))
        ])
      )
      ]
    )),
    Container(alignment: Alignment.topRight,margin:EdgeInsets.only(right:10,top:10),child:IconButton(color: isLikeClicked ? Colors.white : Colors.red,icon: Icon(Icons.favorite),onPressed: () {setState(({isLikeClicked = !isLikeClicked;
    }));
    },
    ),
    ),
  );
}
}
