import 'package:codepure_flutter_30_days/utils/MyRoutes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonSize = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png"),
            SizedBox(
              height: 10,
            ),
            Text(
              "welcome $name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "enter username", labelText: "username"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "enter password", labelText: "password"),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  buttonSize = true;
                });
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, MyRoutes.homePage);
                setState(() {
                  buttonSize = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: buttonSize ? 50 : 150,
                child: buttonSize
                    ? Icon(Icons.done,color: Colors.white,)
                    : Text(
                        "login",
                        style: TextStyle(color: Colors.white),
                      ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(buttonSize ? 50 : 8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
