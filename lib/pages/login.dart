import 'package:flutter/material.dart';
import 'package:electroshop/pages/signup.dart';
import 'package:electroshop/widget/support_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 25.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/banner1.webp"),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Text(
                        "Sign In",
                        style: AppWidget.boldTextFeildStyle(),
                      )),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                          child: Text(
                        "please enter the details below",
                        style: AppWidget.lightTextFeildStyle(),
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Email",
                        style: AppWidget.semiboldTextFeildStyle(),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Color(0xFFF4F5F9),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "abc@gmail.com",
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Password",
                        style: AppWidget.semiboldTextFeildStyle(),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Color(0xFFF4F5F9),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "your password",
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot password?",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      )
                    ]),
              ),
  SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("Don't have an account?",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold) ),
                
                GestureDetector(
                  onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                  },
                  child: Text("  Sign Up",style: TextStyle(color: Colors.blue, fontSize:18,fontWeight: FontWeight.bold),))
               ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
