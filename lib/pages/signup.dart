import 'package:electroshop/pages/bottomnav.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:electroshop/pages/login.dart';
import 'package:electroshop/widget/support_widget.dart';
import 'package:random_string/random_string.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? name,email,password;
  TextEditingController namecontroller=new TextEditingController();
  TextEditingController mailcontroller=new TextEditingController();
  TextEditingController passwordcontroller=new TextEditingController();

  final _formkey=GlobalKey<FormState>();

  registration()async{
    if(password!=null && name!=null && email!=null){
      try {
        UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.greenAccent,
          content: Text("User registered succesfully",style: TextStyle(fontSize: 20),)));
          String Id=randomAlphaNumeric(10);
          Map<String,dynamic> userInfoMap={
            "Name":namecontroller.text,
            "Email":mailcontroller.text,
            "Id":Id,
            "Image":"https://www.bing.com/images/search?view=detailV2&ccid=E2zFDYn5&id=76EB81ACBCD3F7350CA8F5D1267CC3CD2E8B732C&thid=OIP.E2zFDYn5F-6Lggs5u6qY1AHaHa&mediaurl=https%3a%2f%2fwww.shareicon.net%2fdata%2f512x512%2f2016%2f05%2f24%2f770117_people_512x512.png&exph=512&expw=512&q=person+profile+image+animated&simid=608027448453367246&FORM=IRPRST&ck=E95B3265BFCC10C203E96192FAB99BDB&selectedIndex=0&itb=1&idpp=overlayview&ajaxhist=0&ajaxserp=0"
          };
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnav()));
      }on FirebaseAuthException catch (e) {
        if(e.code=='weak-password'){
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Weak password",style: TextStyle(fontSize: 20),)));
        }
        if(e.code=='email-already-in-use'){
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("An account already exists with the given mail",style: TextStyle(fontSize: 20),)));
        }
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 25.0,
          ),
          child: Form(
            key: _formkey,
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
                            child: TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'please enter your name';
                                }
                                return null;
                              },
                              controller: namecontroller,
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
                            child: TextFormField(
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'please enter your email';
                                }
                                return null;
                              },
                              controller: mailcontroller,
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
                            child: TextFormField(
                              // obscureText: true,
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'please enter your password';
                                }
                                return null;
                              },
                              controller: passwordcontroller,
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
                        GestureDetector(
                          onTap: (){
                            if(_formkey.currentState!.validate()){
                              setState(() {
                                name=namecontroller.text;
                                email=mailcontroller.text;
                                password=passwordcontroller.text;
                              });
                            }
                            registration();
                          },
                          child: Center(
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
                          ),
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
      ),
    );
  }
}