import 'package:flutter/material.dart';
import 'package:aureus/src/models/job.dart';
import 'package:aureus/src/views/apply-job-screens/apply-to-company-step-1.dart';

class JobWidget extends StatelessWidget {
  final Item? item;
  const JobWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(40),
                topStart: Radius.circular(40),
              ),
            ),
            isScrollControlled: true,
            useRootNavigator: true,
            builder: (context) {
              return _bottomSheet(context);
            });
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          elevation: 0,
          color: Colors.white.withOpacity(0.5),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(item!.company,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffe46b10).withOpacity(0.8))),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                          child: Text(item!.date,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 4, 65, 0),
                        child: Text(item!.role,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 12, 3, 0),
                        child: Icon(Icons.monetization_on_sharp,
                            size: 15, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 13, 0),
                        child: Text(item!.salary,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: Text(item!.location,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }

  _bottomSheet(BuildContext context) {
    return Container(
        height: 520,
        color: Color(0xff757575),
        child: Container(
            padding: EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/slack.jpeg')),
                SizedBox(height: 4),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text("SLACK",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffe46b10).withOpacity(0.8))),
                ),
                SizedBox(height: 4),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text("Senior Product Designer",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),
                SizedBox(height: 4),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text("East, Singapore",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey)),
                ),
                SizedBox(height: 22),
                Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Text("Job Description",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    "We're looking for a talented Lead Product Designer to join our rapidly growing design team to create intuitive and effectiveexperiences for our customers as...",
                    maxLines: 10,
                    style: TextStyle(
                        fontSize: 15.0,
                        height: 2.3 //You can set your custom height here
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 18),
                Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Text("Requirements",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    "-Developing product design concepts from client requirements",
                    maxLines: 10,
                    style: TextStyle(
                        fontSize: 15.0,
                        height: 2.3 //You can set your custom height here
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Container(
                        width: 300,
                        height: 45,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ApplyToCompany1()));
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                // side: BorderSide(color: Colors.red)
                              )),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffe46b10).withOpacity(0.7),
                              ),
                            ),
                            child: Text(
                              'Apply This Job',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      Spacer(),
                      Material(
                          color: Color(0xffe46b10).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15.0),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.bookmark_border,
                                color: Color(0xffe46b10).withOpacity(0.5),
                                size: 27.0),
                          )))
                    ],
                  ),
                ),
              ],
            )));
  }
}
