import 'package:flutter_web/material.dart';

class NovaRecargaPasso1 extends StatefulWidget {
  var nextPage;

  NovaRecargaPasso1({this.nextPage});

  @override
  _NovaRecargaPasso1State createState() =>
      _NovaRecargaPasso1State(nextPage: nextPage);
}

class _NovaRecargaPasso1State extends State<NovaRecargaPasso1> {
  var nextPage;
  var controllerText = TextEditingController();

  _NovaRecargaPasso1State({this.nextPage});

  var whichPage = 0;

  void changeStateRightSide(value) {
    setState(() {
      whichPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(margin: EdgeInsets.only(top: 30), child: LeftSide()),
        if (this.whichPage == 0)
          Container(
              child: RightSide(changeStateRightSide: changeStateRightSide)),
        if (this.whichPage == 1)
          Container(
              child:
                  RightSidePaying(changeStateRightSide: changeStateRightSide)),
      ],
    ));
  }
}

class LeftSide extends StatefulWidget {
  @override
  _LeftSideState createState() => _LeftSideState();
}

class _LeftSideState extends State<LeftSide> {
  var mockData = [
    {
      'data': '05/09',
      'local': 'Celular',
      'hash':
          'ccc68482d9e0eee0789e64c7674421076738f8836857ea89bcd0afb832bf3fc3',
      'valor': 'R\$ 20,00'
    },
    {
      'data': '05/06',
      'local': 'Guichê',
      'hash':
          '46070d4bf934fb0d4b06d9e2c46e346944e322444900a435d7d9a95e6d7435f5',
      'valor': 'R\$ 10,00'
    },
    {
      'data': '29/05',
      'local': 'Celular',
      'hash':
          '61be55a8e2f6b4e172338bddf184d6dbee29c98853e0a0485ecee7f27b9af0b4',
      'valor': 'R\$ 54,00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      child: Padding(
        padding: const EdgeInsets.only(left: 60.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Usuario',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 500,
                      height: 400,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, left: 30, right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(bottom: 20),
                                        height: 50,
                                        width: 150,
                                        child: Text(
                                          'Anna Flávia',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 200,
                                        child: Text(
                                          '123.456.789/00',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 100,
                                    width: 80,
                                    color: Colors.grey[300],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                style: TextStyle(fontSize: 25),
                                decoration: InputDecoration(
                                    labelText: 'Digite o número do cartão'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  height: 440,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Saldo atual',
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'R\$ 13,70',
                        style: TextStyle(fontSize: 45),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 700,
                  child: Text(
                    'Últimas 10 transações',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 1000,
                  height: 150,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: mockData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(6),
                          child: Container(
                            width: 350,
                            height: 50,
                            child: Card(
                              elevation: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(mockData[index]['data'] +
                                            ' - ' +
                                            mockData[index]['local']),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(mockData[index]['hash']
                                            .substring(0, 40)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(mockData[index]['valor']),
                                      ],
                                    ),
                                  ),
                                  Center(
                                      child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ))
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class RightSide extends StatefulWidget {
  var changeStateRightSide;

  RightSide({this.changeStateRightSide});

  @override
  _RightSideState createState() =>
      _RightSideState(changeStateRightSide: changeStateRightSide);
}

class _RightSideState extends State<RightSide> {
  var changeStateRightSide;

  _RightSideState({this.changeStateRightSide});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 1000,
      height: MediaQuery.of(context).size.height - 70,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.3, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0XFF15CCEA),
            Color(0XFF65D7A0),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.maxFinite,
              child: Text(
                'Quanto você quer transferir?',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.maxFinite,
              child: TextFormField(
                style: TextStyle(fontSize: 40, color: Colors.white),
                textAlign: TextAlign.center,
                decoration: InputDecoration(prefixText: 'R\$'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Saldo atual: R\$ 13,70',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Forma de pagamento',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.left,
            ),
            GestureDetector(
              onTap: () {
                this.changeStateRightSide(1);
              },
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 120,
                      height: 130,
                      child: Card(
                        elevation: 2,
                        child: Center(
                            child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 70,
                                child: Icon(
                                  Icons.credit_card,
                                  color: Color(0XFFFA6423),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Cartões',
                              style: TextStyle(color: Color(0XFFFA6423)),
                            )
                          ],
                        )),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 120,
                      height: 130,
                      child: Card(
                        elevation: 2,
                        child: Center(
                            child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 70,
                                child: Icon(
                                  Icons.attach_money,
                                  color: Color(0XFFFA6423),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Dinheiro',
                              style: TextStyle(color: Color(0XFFFA6423)),
                            )
                          ],
                        )),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 120,
                      height: 130,
                      child: Card(
                        elevation: 2,
                        child: Center(
                            child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 70,
                                child: Icon(
                                  Icons.store,
                                  color: Color(0XFFFA6423),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Google Play',
                              style: TextStyle(color: Color(0XFFFA6423)),
                            )
                          ],
                        )),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RightSidePaying extends StatefulWidget {
  var changeStateRightSide;

  RightSidePaying({this.changeStateRightSide});

  @override
  _RightSidePaying createState() =>
      _RightSidePaying(changeStateRightSide: changeStateRightSide);
}

class _RightSidePaying extends State<RightSidePaying> {
  var changeStateRightSide;

  _RightSidePaying({this.changeStateRightSide});

  void loadData() async {
    await Future.delayed(Duration(seconds: 3));
    this.changeStateRightSide(2);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 1000,
        height: MediaQuery.of(context).size.height - 70,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.3, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Color(0XFF15CCEA),
              Color(0XFF65D7A0),
            ],
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator()
                ])));
  }
}
