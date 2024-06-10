import 'package:flutter/material.dart';
import 'package:electroshop/pages/login.dart';
import 'package:electroshop/widget/support_widget.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                        "Sign Up",
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
                        "Name",
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
                              hintText: "Your name",
                            ),
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
                                "SIGN UP",
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
                Text("Already have an account?",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold) ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Text("  Sign in",style: TextStyle(color: Colors.blue, fontSize:18,fontWeight: FontWeight.bold ),))
               ],
              )
            ],
          ),
        ),
      ),
    );
  }
}