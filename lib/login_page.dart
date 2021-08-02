import 'package:flutter/material.dart';
import 'package:uts_arnea_wanda_izzi/auth_services.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.indigoAccent.shade100,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[
                Colors.indigoAccent.shade100,
                Colors.amber.shade100,
                Colors.cyanAccent.shade100
              ],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'K-POP Voting Apps',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                backgroundColor: Colors.yellowAccent,
              ),
            ),
            Container(
              width: 250,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.email), labelText: 'Email'),
                controller: emailController,
              ),
            ),
            Container(
              width: 250,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock), labelText: 'Password'),
                controller: passwordController,
              ),
            ),
            RaisedButton(
                child: Text(
                  "Sign In Anonymous",
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                color: Colors.black,
                elevation: 6.0,
                splashColor: Colors.yellow,
                highlightColor: Colors.pink,
                hoverColor: Colors.green,
                focusColor: Colors.purple,
                disabledColor: Colors.amber,
                onPressed: () async {
                  await AuthServices.signInAnonymous();
                }),
            RaisedButton(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                color: Colors.black,
                elevation: 6.0,
                splashColor: Colors.yellow,
                highlightColor: Colors.pink,
                hoverColor: Colors.green,
                focusColor: Colors.purple,
                disabledColor: Colors.amber,
                onPressed: () async {
                  await AuthServices.signIn(
                      emailController.text, passwordController.text);
                }),
            RaisedButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                color: Colors.black,
                elevation: 6.0,
                splashColor: Colors.yellow,
                highlightColor: Colors.pink,
                hoverColor: Colors.green,
                focusColor: Colors.purple,
                disabledColor: Colors.amber,
                onPressed: () async {
                  await AuthServices.signUp(
                      emailController.text, passwordController.text);
                }),
          ],
        ),
      ),
    );
  }
}
