import 'main.dart';
import 'SignUp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'constants.dart';

class SignIn extends StatelessWidget {
  late String email;
  late String password;
  var show=true;
  final auth= FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bright,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:45.0,left: 15),
                    child: Container(
                      child:  Row(
                        children: [
                          Text("Jeesar",
                            style: TextStyle(
                              color: back,
                              fontSize: 45,
                            ),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text("Welcome",
                          style: TextStyle(
                            color: back,
                            fontSize: 25,
                          ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 90,),
                  SizedBox(
                    width: 400,
                    child: TextFormField(
                      onChanged: (value){
                        email=value;
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0XFF001838),
                            )
                            ,borderRadius: BorderRadius.circular(50)
                        ),
                        fillColor: back,
                        focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color: back,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: back,
                            fontFamily: 'Fjalla'
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 400,
                    child: TextFormField(
                      onChanged: (value){
                        password=value;
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: back,
                            )
                            ,borderRadius: BorderRadius.circular(50)
                        ),
                        fillColor: back,
                        suffixIcon: Icon(Icons.remove_red_eye),

                        focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color: back,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: back,
                            fontFamily: 'Fjalla'
                        ),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async{
                      try {
                        var user = await auth.signInWithEmailAndPassword(
                            email: email,
                            password: password);
                        if (user != null) {
                          Navigator.pushNamed(context, '/mainScreen');
                        }
                      }  catch(e){
                        print(e);
                      }
                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),bottom: Radius.circular(40)),
                          color: back
                      ) ,
                      child: Center(
                        child: Text("Sign In",
                          style: TextStyle(
                              color:Colors.white,
                              fontSize: 18,
                              fontFamily: 'Fjalla'
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 20,
                            fontFamily: 'Fjalla'
                        ),),
                      TextButton(
                          onPressed: ()=> Navigator.pushNamed(context, '/signUp'),
                          child: Text("Sign Up",
                            style: TextStyle(
                                color: back,
                                fontSize: 20,
                                fontFamily: 'Fjalla'
                            ),))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),);
  }
}
