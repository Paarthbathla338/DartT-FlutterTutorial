import 'package:firstapp/utils/routes.dart';
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/authimg.png", fit: BoxFit.cover),
            SizedBox(height: 20),
            Text("Welcome $name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      }),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      )),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
                width: 150,
                height: 50,
                color: Colors.deepPurple,
                alignment: Alignment.center,
                child: Text("Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize:18)))
            // ElevatedButton(
            //     child: Text("Login"),
            //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRoutes.loginRoute);
            //     }),
          ],
        ));
  }
}
