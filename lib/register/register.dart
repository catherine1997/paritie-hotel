import 'package:flutter/material.dart';
class register extends StatelessWidget {
  bool checkbox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Register Screen'),
      // ),
      body:  Center(
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(80),
              child: new Image(
                width: 130,
                height: 130,
                image: AssetImage("assets/image/vector.png"),
              ),
            ),
            SizedBox(
              width: 340,
              child:TextFormField(
                decoration: InputDecoration(
                    labelText: 'Enter your Fullname'
                ),
              ),
            ),
            SizedBox(
              width: 340,
              child:TextFormField(
                decoration: InputDecoration(
                    labelText: 'Enter your E-mail Address'
                ),
              ),
            ),
            SizedBox(
              width: 340,
              child:TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key_outlined,
                      size: 18.5,),
                    labelText: 'Enter your Password'
                ),
              ),
            ),
            SizedBox(
              width: 340,
              child:TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key_outlined,
                  size: 18.5,),
                    labelText: 'Enter your Confirm Password'
                ),
              ),
            ),
            SizedBox(
              width: 340,
              child:TextFormField(
                decoration: InputDecoration(
                    labelText:'choose your username'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(27, 40, 0, 0),
              child: new Row(

                children:[
                  Center(
                    child: new Checkbox(value: checkbox,
                        activeColor: Colors.green,
                        onChanged:(bool newValue){
                          checkbox = newValue;
                        }),
                  ),
                  Text("Accept our Terms and Conditions",

                  ),
                  IconButton(
                    iconSize: 20,
                    icon: Icon(Icons.check),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  elevation: 3,
                  onPressed: () {
                    print("Register");
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.lightBlueAccent, Colors.lightBlueAccent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 350.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Register",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
        ),
      ),
    );
  }
}
