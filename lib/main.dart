import 'package:flutter/material.dart';
import 'package:login/register/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paritie Hotel',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
          title: 'Paritie Hotel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool checkBoxValue =false;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Center(
        child:SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(80),
              child: new Image(
                width: 170,
                height: 150,
                image: AssetImage("assets/image/flutter1.png"),
              ),
            ),
      SizedBox(
        width: 340,
        child:TextFormField(
          decoration: InputDecoration(
              icon: Icon(Icons.group,
              size: 18.5,),
              labelText: 'Enter your username'
          ),
        ),
      ),

            SizedBox(
              width: 340,
              child:Padding(
                padding: const EdgeInsets.fromLTRB(0,18.5,0,0),
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key_outlined,
                        size: 18.5,),
                      labelText: 'Enter your password'
                  ),
                ),
              ),
            ),

  new Padding(
    padding: EdgeInsets.fromLTRB(0, 85.9, 0, 0),
    child: Container(
      height: 50.0,
      child: RaisedButton(
          elevation: 3,
        onPressed: () {
          print("u clicked Sign In");
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.lightBlueAccent, Colors.lightBlueAccent],
              ),
              borderRadius: BorderRadius.circular(8.0)
          ),
          child: Container(
            constraints: BoxConstraints(maxWidth: 350.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Log In",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    ),
  ),
            new Padding(
              padding: EdgeInsets.fromLTRB(0, 27, 0, 0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 3,
                    onPressed: () {
                      print("Sign Up");
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Colors.lightBlueAccent, Colors.lightBlueAccent],
                          ),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 350.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ),
      new Row(
        children:[
           new Padding(
             padding: EdgeInsets.fromLTRB(100, 10, 0, 0),
            child: Text("Forgot Password?"),
           ),

          new Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
            child: GestureDetector(
              onTap: (){
                print("Tapped");
              },
              child:Text(
                "Reset Password",
                style: new TextStyle(
                    decoration:TextDecoration.underline,
                    color: Colors.lightBlueAccent,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]
      ),

          ],
        ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
