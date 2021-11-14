import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fitgram/screens/DashboardScreen.dart';

class Signin extends StatefulWidget {
  @override
   _SigninState createState() => _SigninState();
}
class _SigninState extends State<Signin> {
   @override
   Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/gym.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: 500,
            width: 500,
            child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white70,
            child: Column(children: [
              Container(
                  height: 150.0,
                  width: 190.0,
                  padding: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Center(
                    child: Text('Fitgram', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50) )
                  ),
                ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter valid mail id as abc@gmail.com'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your secure password'
                  ),
                ),
              ),
              TextButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.green[700], fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => DashBoardPage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],),
          ),
          )
        ),
      ),
    );
  }
} 