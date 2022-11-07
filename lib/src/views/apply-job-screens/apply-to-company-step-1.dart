import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:aureus/src/views/apply-job-screens/apply-to-company-step-2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApplyToCompany1 extends StatefulWidget {
  const ApplyToCompany1({Key? key}) : super(key: key);

  @override
  State<ApplyToCompany1> createState() => _ApplyToCompany1State();
}

class _ApplyToCompany1State extends State<ApplyToCompany1> {
  bool? isActive;

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
              padding: EdgeInsets.only(left: 2, top: 15, bottom: 10),
              child: Icon(Icons.close_rounded, size: 30, color: Colors.black),
            ),
            // Text('Back',
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
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
                padding: const EdgeInsets.only(left: 0, top: 25),
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
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.orange),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 163, right: 20),
                child: LinearPercentIndicator(
                  width: 356,
                  lineHeight: 3.0,
                  percent: 0.3,
                  progressColor: Colors.orange,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, top: 190, right: 16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Resume",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Remember to include your most updated Resume",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                                Spacer(),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, bottom: 20),
                                    child: Transform.scale(
                                      scale: 1.3,
                                      child: Icon(Icons.add,
                                          color: Colors.black, size: 29),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Card(
                        color: Color(0xffe46b10).withOpacity(0.7),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            "assets/icons/file.svg",
                            color: Colors.white,
                            height: 40,
                          ),
                          title: Text(
                            'My Resume.pdf',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: Text('11/06/20',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ),
                      SizedBox(height: 16),
                      Stack(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Cover Letter",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Standout with your cover letter",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300),
                                ),
                                Spacer(),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, bottom: 20),
                                    child: Transform.scale(
                                      scale: 1.3,
                                      child: Icon(Icons.add,
                                          color: Colors.black, size: 29),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Card(
                        color: Color(0xffe46b10).withOpacity(0.7),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            "assets/icons/file.svg",
                            color: Colors.white,
                            height: 40,
                          ),
                          title: Text(
                            'My cover letter final.pdf',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: Text('11/06/20',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ),
                      SizedBox(height: 6),
                      Card(
                        color: Color(0xffe46b10).withOpacity(0.4),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            "assets/icons/file.svg",
                            color: Colors.white,
                            height: 40,
                          ),
                          title: Text(
                            'My cover letter.doc',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: Text('06/06/20',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // width:265,
                          height: 45,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ApplyToCompany2()));
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  // side: BorderSide(color: Colors.red)
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xffe46b10).withOpacity(0.7),
                                ),
                              ),
                              child: Text(
                                'Proceed',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
