import 'package:flutter_web/material.dart';
import 'pages/nova_recarga.dart';
import 'pages/recarga_passo1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Passe Digital',
      theme: ThemeData(
        fontFamily: 'HelveticaNeueLight',
        primarySwatch: Colors.orange,
        accentColor: Colors.orange,
      ),
      home: BasePage(),
    );
  }
}

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int selectedIndex = 0;
  int page = 0;

  void nextPage() {
    this.page = 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    var body;
    if(selectedIndex == 0) {
      body =  Container(
          height: 600,
          child: NovaRecargaPage(
            nextPage: nextPage,
          ));


    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              width: double.maxFinite,
              height: 80,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Passe',
                            style: TextStyle(
                                fontSize: 30, color: Color(0XFF15CCEA)),
                          ),
                          Text('Digital',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Theme.of(context).colorScheme.primary))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        this.selectedIndex = 0;
                        setState(() {});
                      },
                      child: InkWell(
                        child: Container(
                          margin: EdgeInsets.only(left: 50, top: 35),
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Realizar nova recarga',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: (selectedIndex == 0)
                                        ? Theme.of(context).colorScheme.primary
                                        : Colors.black),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Divider(
                                height: 2,
                                color: (selectedIndex == 0)
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.black,
                              )
                            ],
                          ),
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      this.selectedIndex = 1;
                      setState(() {});
                    },
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 50, top: 35),
                        width: 200,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Histórico de recargas',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: (selectedIndex == 1)
                                      ? Theme.of(context).colorScheme.primary
                                      : Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              height: 2,
                              color: (selectedIndex == 1)
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
//            body
        NovaRecargaPasso1()
          ],
        ),
      ),
    );
  }
}
