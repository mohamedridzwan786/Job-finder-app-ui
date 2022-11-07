import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:aureus/src/Widget/bottom-tab.dart';

class ApplyToCompany3 extends StatefulWidget {
  const ApplyToCompany3({Key? key}) : super(key: key);

  @override
  State<ApplyToCompany3> createState() => _ApplyToCompany3State();
}

class _ApplyToCompany3State extends State<ApplyToCompany3> {
  Widget _header1() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, top: 25, bottom: 10),
              child: Text(
                "Apply To Slack",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.black87),
              ),
            ),
            // Text('Back',
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

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
            // Text('Back',
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }




  Widget imageProfile() {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0,
              color: Theme.of(context).scaffoldBackgroundColor),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/rock.jpeg"))),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:0,top:25),
                child: _backButton(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2, top: 70),
                child: _header1(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 140),
                child: Row(
                  children: [
                    Text(
                      "Review Information",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.orange),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 163,right:20),
                child: LinearPercentIndicator(
                  width: 356,
                  lineHeight: 3.0,
                  percent: 1,
                  progressColor: Colors.orange,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, top: 190, right: 16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Contact Info",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      imageProfile(),
                      buildAccountOptionRow1(context, "Full Name"),
                      buildAccountOptionRow2(context, "Adrian Severin"),
                      buildAccountOptionRow1(context, "Email"),
                      buildAccountOptionRow2(context, "Adrianseverin@gmail.com"),
                      buildAccountOptionRow1(context, "Mobile Number"),
                      buildAccountOptionRow2(context, "+6594717281"),
                      SizedBox(
                        height: 4,
                      ),
                      Divider(
                        height: 15,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            "Employment Information",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      buildAccountOptionRow1(context, "Resume"),
                      Row(
                        children: [
                          Icon(
                            Icons.file_copy,
                            color:  Colors.black,
                            size:45,
                          ),
                          Container(
                            width:200,
                            child: ListTile(
                              title: Text('My Resume.pdf',style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text('11/06/20',style: TextStyle(fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ],
                      ),


                      buildAccountOptionRow1(context, "Cover Letter"),
                      Row(
                        children: [
                          Icon(
                            Icons.file_copy,
                            color:  Colors.black,
                            size:45,
                          ),
                          Container(
                            width:200,
                            child: ListTile(
                              title: Text('My cover letter final.pdf',style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text('11/06/20',style: TextStyle(fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ],
                      ),
                      buildAccountOptionRow1(context, "Additional Skills"),
                Row(
                  children: [
                    Container(
                      width:85,
                      alignment: Alignment.center,
                      // margin: const EdgeInsets.all(30.0),
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(
                            Radius.circular(5.0) //         <--- border radius here
                        ),
                      ),
                      child: Text(
                        "Figma",
                        style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                      SizedBox(height: 8),
                      Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    // width:265,
                                    height: 45,
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => TabBarScreen()));
                                        },
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(10.0),
                                                // side: BorderSide(color: Colors.red)
                                              )),
                                          backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                            Color(0xffe46b10).withOpacity(0.7),
                                          ),
                                        ),
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }


  GestureDetector buildAccountOptionRow1(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOptionRow2(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
