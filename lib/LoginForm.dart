import 'package:flutter/material.dart';
import 'package:flutter_app/ItemList.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  var username = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: EdgeInsets.all(30),
      child: Column(
        children: [
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey[200])
                      )
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter your username",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none
                    ),
                    controller: username,
                    validator: validateEmpty,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey[200])
                      )
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,

                    ),
                    obscureText: true,
                    controller: password,
                    validator: validateEmpty,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
            Center(

                child: RaisedButton(
                  color: Colors.cyan[500],
                  onPressed: validate,
                  child: Text("Login", style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),),
                )

            ),

        ],
      ),
    );
  }

  String validateEmpty(value) {
    if (value.isEmpty) {
      return "Required";
    }
    return null;
  }

  void validate() {
    if (username.text == "" || password.text == "") {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Username and Password must not be empty')));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (builder){
        return ItemList();
      }));
    }
  }
}