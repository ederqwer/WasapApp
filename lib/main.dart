import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Color(0xff075e55),
        fontFamily: 'Helvetica',
      ),
      home: MyHomePage(
        title: 'WhatsApp',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  List<String> personas = [
    'https://es.web.img2.acsta.net/pictures/17/02/08/16/50/452749.jpg',
    'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small/public/articulos/perfil-resilencia.jpg',
    'https://definicionde.es/wp-content/uploads/2019/04/definicion-de-persona-min.jpg',
    'https://s03.s3c.es/imag/_v0/770x420/7/6/f/GettyImages-522796439.jpg',
    'https://www.nacionrex.com/__export/1557784243491/sites/debate/img/2019/05/13/keanu_reeves_crop1557782204202.jpg_423682103.jpg',
    'https://raullparra.files.wordpress.com/2019/02/esta-persona-no-existe.png',
    'https://xavierferras.com/wp-content/uploads/2019/02/266-Persona.jpg',
    'https://coachingparavivir.files.wordpress.com/2019/03/esta-persona-no-existe.jpg?w=506&h=506',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Donald_Trump_official_portrait_%28cropped_2%29.jpg/1200px-Donald_Trump_official_portrait_%28cropped_2%29.jpg',
    'https://i.blogs.es/b929f4/duncan_chapple_horizontal/200_200.jpg',
    'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small/public/media/2019/11/08/perfil_personas_cuesta_perdonar.jpg',
  ];

  List<String> tiempos = [
    '10:50 p.m',
    '11:30 a.m',
    '26/5/20',
    '8:30 p.m',
    '27/5/20',
    '9:20 p.m',
    '9:10 p.m',
    '10/4/20',
    '12:10 a.m',
    '7:50 a.m',
    'ayer',
    '4:40 a.m',
    '3:20 p.m',
    '2/2/20',
  ];

  List<Widget> _getChats() {
    List<Widget> chats = List<Widget>();
    for (int i = 0; i < 20; i++) {
      chats.add(
        Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {},
            child: ListTile(
              // contentPadding: EdgeInsets.only(bottom: 10, right: 16, left: 16),
              leading: Material(
                type: MaterialType.transparency,
                // color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (c) {
                        return Scaffold(
                          backgroundColor: Colors.transparent,
                          body: Container(
                            margin: EdgeInsets.only(top: 120),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Hero(
                                          tag: i.toString(),
                                          child: Container(
                                            color: Colors.red,
                                            width: 230,
                                            height: 230,
                                            child: Image.network(
                                              personas[i % 11],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          color: Colors.black12,
                                          width: 230,
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5,
                                            horizontal: 5,
                                          ),
                                          child: Text(
                                            'Will Smith',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      color: Colors.white,
                                      width: 230,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Material(
                                              type: MaterialType.transparency,
                                              child: InkWell(
                                                customBorder: CircleBorder(),
                                                onTap: () {},
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  child: Icon(
                                                    Icons.chat,
                                                    color: Color(0xff018879),
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Material(
                                              type: MaterialType.transparency,
                                              child: InkWell(
                                                customBorder: CircleBorder(),
                                                onTap: () {},
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  child: Icon(
                                                    Icons.phone,
                                                    color: Color(0xff018879),
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Material(
                                              type: MaterialType.transparency,
                                              child: InkWell(
                                                customBorder: CircleBorder(),
                                                onTap: () {},
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  child: Icon(
                                                    Icons.videocam,
                                                    color: Color(0xff018879),
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Material(
                                              type: MaterialType.transparency,
                                              child: InkWell(
                                                customBorder: CircleBorder(),
                                                onTap: () {},
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  child: Icon(
                                                    Icons.info_outline,
                                                    color: Color(0xff018879),
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                      personas[i % 11],
                    ),
                  ),
                ),
              ),
              title: Container(
                padding: EdgeInsets.only(bottom: 5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        lorem(words: 2, paragraphs: 1),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      tiempos[i % 14],
                      style: TextStyle(
                        color: (i % 3 == 0)
                            ? Color(0xff0dd15b)
                            : Color(0xff7c7c7c),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      lorem(words: 10, paragraphs: 1),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  (i % 3 == 0)
                      ? CircleAvatar(
                          radius: 10,
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                          backgroundColor: Color(0xff0dd15b),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      );
      chats.add(
        Container(
          margin: EdgeInsets.only(left: 83, right: 16),
          child: Container(
            color: Color(0xfff2f2f2),
            height: 1,
          ),
        ),
      );
    }
    return chats;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            // isScrollable: true,
            labelPadding: EdgeInsets.all(0),
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text(
                  'CHATS',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'ESTADOS',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'LLAMADAS',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 100,
          ),
          children: _getChats(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          backgroundColor: Color(0xff00cc3f),
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}
