import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_gp/home_screen.dart';
import 'package:flutter_gp/signup_screen.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                //container for all screen with background image
                Container(
                  height: 800,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/BG.png'),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Stack(
                    //stack for login text and two text fields and a button
                    children: [
                      Positioned(
                        child: Container(
                          //For Login Text
                          margin: EdgeInsetsDirectional.only(bottom: 300),
                          child: Center(
                            child: Text(
                              "Log\nIn",
                              style: TextStyle(color:Colors.white, fontSize: 95,fontWeight: FontWeight.bold,),
                            )
                          ),
                        ),
                      ),
                      Container(
                        //contains text fields
                        padding: EdgeInsetsDirectional.only(top:400),
                        child: Padding(
                          padding:  EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(77 , 77, 77, .4),
                                        blurRadius: 20.0,
                                        offset: Offset(0 , 10)
                                      ),
                                    ]
                                ),
                                child: Form(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(

                                      children: <Widget>[

                                        TextFormField(decoration: InputDecoration(
                                          hintText: "Enter your Email",

                                          prefixIcon: Icon(
                                            Icons.email_outlined,
                                          ),
                                          prefixIconColor: Colors.grey[400],
                                        ),
                                        ),
                                        /*Enter password*/
                                        SizedBox(height: 15,),

                                        TextFormField(decoration: InputDecoration(
                                            hintText: "Enter your Password",

                                          prefixIcon: Icon(
                                            Icons.lock_outline,
                                          ),
                                          suffixIcon: Icon(
                                            Icons.remove_red_eye_outlined,
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),

                                  ),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Container(

                                //for login button

                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(51 , 51, 51, 1),
                                        Color.fromRGBO(60 , 60, 60, 1),

                                      ]
                                    )
                                ),
                                child: Center(
                                  child: MaterialButton(
                                    onPressed: ()
                                    {
                                      print(emailController.text);
                                      print(passwordController.text);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>HomeScreen())
                                      );
                                    },
                                    child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40,),
                              Row(

                                //for register text
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Don\'t have an account?', style: TextStyle(color: Colors.white,),),
                                  TextButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>SignupScreen())
                                        );
                                      },
                                       child: Text('Register'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}