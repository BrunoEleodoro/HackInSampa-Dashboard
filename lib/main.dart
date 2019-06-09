import 'package:flutter_web/material.dart';
import 'pages/nova_recarga.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.orange,
      ),
      home: BasePage(),
    );
  }
}

class BasePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
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
                            style:
                                TextStyle(fontSize: 30, color: Color(0XFF15CCEA)),
                          ),
                          Text('Digital',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Theme.of(context).colorScheme.primary))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, top:35),
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Realizar nova recarga',
                          style: TextStyle(fontSize: 18,color:  Theme.of(context).colorScheme.primary),
                        ),
                        SizedBox(height: 20,),
                        Divider(
                          height: 2,
                          color:  Theme.of(context).colorScheme.primary,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, top:35),
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Histórico de recargas',
                          style: TextStyle(fontSize: 18,color:  Theme.of(context).colorScheme.primary),
                        ),
                        SizedBox(height: 20,),
                        Divider(
                          height: 2,
                          color:  Theme.of(context).colorScheme.primary,
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(left: 50, top:35),
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Histórico de recargas',
                            style: TextStyle(fontSize: 18,color:  Theme.of(context).colorScheme.primary),
                          ),
                          SizedBox(height: 20,),
                          Divider(
                            height: 2,
                            color:  Theme.of(context).colorScheme.primary,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),//
            Container(height : 800,child: NovaRecargaPage())
          ],
        ),
      ),
    );
  }
}
