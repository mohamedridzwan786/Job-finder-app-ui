import 'package:flutter/material.dart';
import 'package:aureus/src/views/main-screens/components-screens/applied-jobs-component.dart';

class AppliedJobScreen extends StatefulWidget {
  const AppliedJobScreen({Key? key}) : super(key: key);

  @override
  State<AppliedJobScreen> createState() => _AppliedJobScreenState();
}

class _AppliedJobScreenState extends State<AppliedJobScreen> {
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
                "Your Applied Jobs",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black87),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 2, top: 25, bottom: 10),
              child: Icon(Icons.edit, size: 30, color: Colors.black),
            ),
            // Text('Back',
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _header2() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 14, top: 25, bottom: 10),
              child: Text(
                "You applied for 2 jobs",
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                    color: Colors.grey),
              ),
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
        backgroundColor: Color(0xffe46b10).withOpacity(0.07),
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 30),
                child: _header1(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 75),
                child: _header2(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 95, right: 14),
                child: AppliedJobs(),
              ),
            ],
          ),
        ));
  }
}
