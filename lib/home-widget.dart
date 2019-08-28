import 'package:flutter/material.dart';
import 'package:navigation_alert_app/second-widget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Navigator && SnackBar && Dialog"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                textColor: Colors.white,
                color: Colors.purple,
                child: Text("Second"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return SecondWidget();
                  }));
                },
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.purple,
                child: Text("Hey Snack Bar"),
                onPressed: () {
                  final snackbar = SnackBar(content: Text("Hey!!"));
                  _scaffoldKey.currentState.showSnackBar(snackbar);
                },
              ),
              Builder(builder: (BuildContext context) {
                return RaisedButton(
                  textColor: Colors.white,
                  color: Colors.purple,
                  child: Text("Hey Snack Bar"),
                  onPressed: () {
                    final snackbar = SnackBar(content: Text("Hey22!!"));
                    //_scaffoldKey.currentState.showSnackBar(snackbar);
                    Scaffold.of(context).showSnackBar(snackbar);
                  },
                );
              }),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.purple,
                child: Text("Hey Dialog"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Hey Dialog"),
                          content: Text("Conteudo do Dialog"),
                        );
                      });
                },
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.purple,
                child: Text("Hey Dialog"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Hey Dialog"),
                          content: Text("Conteudo do Dialog"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {},
                              child: Text("Ok"),
                            )
                          ],
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
