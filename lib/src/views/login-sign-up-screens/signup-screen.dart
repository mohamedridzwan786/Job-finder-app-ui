import 'package:flutter/material.dart';
import 'package:aureus/src/views/login-sign-up-screens/login-screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key ?key, this.title}) : super(key: key);

  final String? title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _passwordVisible = false;
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left,size: 45, color: Colors.black),
            ),
            Container(
              padding: EdgeInsets.only(left: 100, top: 10, bottom: 10),
              child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black87),
              ),
            ),
            // Text('Back',
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: isPassword ? 'Password' :'example@mail.com',
                suffixIcon: isPassword ? IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ) : null,
              ))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xfffbb448),Color(0xfffbb448)
                // Color(0xfff7892b)
              ])),
      child: Text(
        'Create Account',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }


  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Log In',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }



  Widget _createTermAndConditionLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Text(
              "By creating an account, you agree to koko's" ,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Terms of Use',
                  style: TextStyle(
                      color: Color(0xfff79c4f),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'and',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                      color: Color(0xfff79c4f),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _addImage() {
    final kInnerDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white),
    );
    final kGradientBoxDecoration = BoxDecoration(
      color:Colors.black,
      border: Border.all(
        color: Colors.black, //kHintColor, so this should be changed?
      ),
    );
    return ClipOval(
      clipBehavior: Clip.antiAlias,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(0.2), //width of the border
          child: ClipOval(
            clipBehavior: Clip.antiAlias,
            child: Container(
              width:
              100.0, // this width forces the container to be a circle
              height:
              100.0, // this height forces the container to be a circle
              child: Column(
                children: [
                  SizedBox(height:24),
                  Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Photo",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              decoration: kInnerDecoration,
            ),
          ),
        ),
        decoration: kGradientBoxDecoration,
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email"),
        _entryField("New Password", isPassword: true),
        _entryField("Re-type Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:0,top:25),
                child: _backButton(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 140),
                      _addImage(),
                      SizedBox(height: 25),
                      _emailPasswordWidget(),
                      SizedBox(height: 20),
                      _submitButton(),
                      SizedBox(height: 2),
                      _createAccountLabel(),
                      SizedBox(height: 1),
                      _createTermAndConditionLabel()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}


