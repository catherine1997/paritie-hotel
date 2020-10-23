import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/loginpage/loginpage.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    int group = 1;
    bool checkbox = false;
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: SingleChildScrollView(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(80),
                child: new Image(
                  width: 165.9,
                  height: 145.5,
                  image: AssetImage("assets/image/flutter1.png"),
                ),
              ),
              SizedBox(
                width: 340,
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(

                        Icons.mail,
                        size: 15,
                        color: Colors.lightBlueAccent,
                      ),
                      labelText: 'E-mail Address',
                  ),
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ),
              SizedBox(
                width: 340,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 18.5, 0, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key_outlined,
                          size: 15,
                          color: Colors.lightBlueAccent,
                        ),
                        labelText: 'Enter your Password'),
                    obscureText: true,
                  ),
                ),
              ),
              new Padding(
                padding: EdgeInsets.fromLTRB(0, 85.9, 0, 0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 3,
                    onPressed: (){
                      setState(() {
                        print("login");
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.lightBlueAccent,
                              Colors.lightBlueAccent
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 350.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Log In",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginpage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.lightBlueAccent,
                              Colors.lightBlueAccent
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 350.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Up",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              new Row(children: [
                new Padding(
                  padding: EdgeInsets.fromLTRB(100, 10, 0, 0),
                  child: Text("Forgot Password?"),
                ),
                new Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: GestureDetector(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Text(
                      "Reset Password",
                      style: new TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.lightBlueAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
