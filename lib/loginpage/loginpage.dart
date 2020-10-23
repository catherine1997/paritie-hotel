import 'package:flutter/material.dart';
class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}
bool checkBoxValue=false;
int group;
class _loginpageState extends State<loginpage> {

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
                      icon: Icon(Icons.person_add_alt,
                        size: 15,),
                      labelText: 'Enter your Fullname'
                  ),
                ),
              ),
              SizedBox(
                width: 340,
                child:TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.mail,
                        size: 15,),
                      labelText: 'Enter your E-mail Address'
                  ),
                ),
              ),
              SizedBox(
                width: 340,
                child:TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key_outlined,
                        size: 15,),
                      labelText: 'Enter your Password'
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                width: 340,
                child:TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key_outlined,
                        size: 15,),
                      labelText: 'Enter your Confirm Password'
                  ),
                  // validator: (input) => !input.contains('@') ? 'Not a valid Email': null,
                  // onSaved: (input) => _password =input,
                  obscureText: true,
                ),
              ),
              SizedBox(
                width: 340,
                child:TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.drive_file_rename_outline,
                        size: 15,),
                      labelText:'choose your username'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(42.9,0,0,0),
                child: Row(
                  children: [
                    Text("Gender",
                      style:  new TextStyle(
                        fontSize: 19.9,
                      ),),
                    Radio(
                      value: 1,
                      groupValue: group,
                      onChanged: (T){
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },
                    ),
                    Text("Male"),
                    Radio(
                      value: 2,
                      groupValue: group,
                      onChanged: (T){
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },

                    ),
                    Text("Female"),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 0, 0),
                child: new Row(

                  children:[
                    Center(
                      child: new Checkbox(
                          value: checkBoxValue,
                          onChanged:(bool value){
                            print(value);
                            setState(() {
                              checkBoxValue = value;
                            });
                          }),
                    ),
                    Text("Accept our Terms and Conditions",

                    ),
                    IconButton(
                      iconSize: 16.5,
                      icon: Icon(Icons.check),
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 3,
                    onPressed: () {
                      print("Register");
                      setState(() {
                        Navigator.pop(context);
                      });
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
