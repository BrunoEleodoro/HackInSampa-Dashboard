import 'package:flutter_web/material.dart';

class NovaRecargaPage extends StatefulWidget {
  var nextPage;
  NovaRecargaPage({this.nextPage});
  @override
  _NovaRecargaPageState createState() => _NovaRecargaPageState(nextPage: nextPage);
}

class _NovaRecargaPageState extends State<NovaRecargaPage> {
  var nextPage;
  var controllerText = TextEditingController();
  _NovaRecargaPageState({this.nextPage});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 108.0),
                  child: Text(
                    'Digite o número do cartão',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 600,
              height: 400,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                height: 50,
                                width: 150,
                                color: Colors.grey[300],
                              ),
                              Container(
                                height: 50,
                                width: 200,
                                color: Colors.grey[300],
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
                      SizedBox(height: 30,),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 25
                        ),
                        onEditingComplete: (){
                          if(controllerText.text.length > 6) {
                            this.nextPage();
                          }
                        },
                        controller: controllerText,
                        decoration: InputDecoration(
                          labelText: 'Digite o número do cartão'
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
