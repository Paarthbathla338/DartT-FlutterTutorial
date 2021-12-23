import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/authimg.png", fit: BoxFit.cover),
            SizedBox(height: 20),
            Text("Welcome",
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
                  )),
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
            ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                  print("Flutter is Amamzing");
                },
                style: TextButton.styleFrom(minimumSize: Size(150, 40)))
          ],
        ));
  }
}
