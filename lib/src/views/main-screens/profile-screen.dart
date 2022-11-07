import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                "Your Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black87),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 2, top: 25, bottom: 10),
              child: Icon(Icons.person, size: 30, color: Colors.black),
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
      height: 160,
      child: Stack(children: <Widget>[
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 0, color: Theme.of(context).scaffoldBackgroundColor),
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/rock.jpeg"))),
        ),
        Positioned(
            bottom: 50,
            right: 0,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                color: Colors.white,
              ),
              child: Icon(Icons.add_circle, color: Colors.black, size: 34),
            )),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xffe46b10).withOpacity(0.0002),
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 2, top: 30),
                child: _header1(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 120, right: 20),
                child: imageProfile(),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, top: 250, right: 16),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Contact Info",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
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
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
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
                        SvgPicture.asset(
                          "assets/icons/file.svg",
                          color: Colors.black,
                          height: 45,
                        ),
                        Container(
                          width: 200,
                          child: ListTile(
                            title: Text(
                              'My Resume.pdf',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '11/06/20',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    buildAccountOptionRow1(context, "Cover Letter"),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/file.svg",
                          color: Colors.black,
                          height: 45,
                        ),
                        // Icon(
                        //   Icons.file_copy,
                        //   color:  Colors.black,
                        //   size:45,
                        // ),
                        Container(
                          width: 200,
                          child: ListTile(
                            title: Text(
                              'My cover letter final.pdf',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('11/06/20',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow1(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {},
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
      onTap: () {},
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
