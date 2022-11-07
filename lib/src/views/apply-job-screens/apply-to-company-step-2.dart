import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:aureus/src/views/apply-job-screens/apply-to-company-step-3.dart';
import 'package:textfield_tags/textfield_tags.dart';

class ApplyToCompany2 extends StatefulWidget {
  const ApplyToCompany2({Key? key}) : super(key: key);

  @override
  State<ApplyToCompany2> createState() => _ApplyToCompany2State();
}

class _ApplyToCompany2State extends State<ApplyToCompany2> {
  double? _distanceToField;
  TextfieldTagsController? _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _distanceToField = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TextfieldTagsController();
  }
  static const List<String> _pickSkills = <String>[
    'Figma'
  ];
  bool? isActive;
  Widget _entryField(String title,String label,) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText:label,
              ))
        ],
      ),
    );
  }

  Widget _labelAndTextFieldWidget() {
    return Column(
      children: <Widget>[
        _entryField("Name of school","Horizon Education University"),
        _entryField("Course of study","Data Analysis"),
        _entryField("Year Graduated","2012" ),
      ],
    );
  }

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
              child: Icon(Icons.keyboard_arrow_left,
                  size: 45, color: Colors.black),
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
                  percent: 0.7,
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
                            "Education",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Included in Resume",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Transform.scale(
                                  scale: 0.7,
                                  child: CupertinoSwitch(
                                    value: false,
                                    onChanged: (bool val) {},
                                  ))),
                        ],
                      ),
                      _labelAndTextFieldWidget(),
                      Row(
                        children: [
                          Text(
                            "Work Experience",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Included in Resume",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Transform.scale(
                                  scale: 0.7,
                                  child: CupertinoSwitch(
                                    // // trackColor: Colors.black,
                                    // // activeColor:Colors.white,
                                    // thumbColor:Colors.grey,
                                    value: true,
                                    onChanged: (bool val) {},
                                  ))),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Additional Skills",
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Autocomplete<String>(
                            optionsViewBuilder: (context, onSelected, options) {
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 4.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Material(
                                    elevation: 4.0,
                                    child: ConstrainedBox(
                                      constraints: const BoxConstraints(maxHeight: 200),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: options.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          final dynamic option = options.elementAt(index);
                                          return TextButton(
                                            onPressed: () {
                                              onSelected(option);
                                            },
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    vertical: 15.0),
                                                child: Text(
                                                  '#$option',
                                                  textAlign: TextAlign.left,
                                                  style: const TextStyle(
                                                    color: Color.fromARGB(255, 74, 137, 92),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            optionsBuilder: (TextEditingValue textEditingValue) {
                              if (textEditingValue.text == '') {
                                return const Iterable<String>.empty();
                              }
                              return _pickSkills.where((String option) {
                                return option.contains(textEditingValue.text.toLowerCase());
                              });
                            },
                            onSelected: (String selectedTag) {
                              _controller!.addTag = selectedTag;
                            },
                            fieldViewBuilder: (context, ttec, tfn, onFieldSubmitted) {
                              return TextFieldTags(
                                textEditingController: ttec,
                                focusNode: tfn,
                                textfieldTagsController: _controller,
                                initialTags: const [
                                  'Figma',
                                ],
                                textSeparators: const [' ', ','],
                                letterCase: LetterCase.normal,
                                validator: (String tag) {
                                  if (tag == 'Figma') {
                                    return 'No, please just no';
                                  } else if (_controller!.getTags!.contains(tag)) {
                                    return 'you already entered that';
                                  }
                                  return null;
                                },
                                inputfieldBuilder:
                                    (context, tec, fn, error, onChanged, onSubmitted) {
                                  return ((context, sc, tags, onTagDelete) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                      child: TextField(
                                        controller: tec,
                                        focusNode: fn,
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.orange,
                                                width: 3.0),
                                          ),
                                          focusedBorder: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.orange,
                                                width: 3.0),
                                          ),
                                          hintText: _controller!.hasTags ? '' : "Enter tag...",
                                          errorText: error,
                                          prefixIconConstraints: BoxConstraints(
                                              maxWidth: _distanceToField! * 0.74),
                                          prefixIcon: tags.isNotEmpty
                                              ? SingleChildScrollView(
                                            controller: sc,
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                SizedBox(width:5),
                                                Icon(Icons.search),
                                                SizedBox(width:5),
                                                Row(
                                                    children: tags.map((String tag) {
                                                      return Container(
                                                        height: 30,
                                                        decoration: const BoxDecoration(
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(10.0),
                                                          ),
                                                          color:
                                                          Colors.orange,
                                                        ),
                                                        margin:
                                                        const EdgeInsets.only(right: 10.0),
                                                        padding: const EdgeInsets.symmetric(
                                                            horizontal: 10.0, vertical: 4.0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            InkWell(
                                                              child: const Icon(
                                                                Icons.clear,
                                                                size: 14.0,
                                                                color: Color.fromARGB(
                                                                    255, 233, 233, 233),
                                                              ),
                                                              onTap: () {
                                                                onTagDelete(tag);
                                                              },
                                                            ),
                                                            const SizedBox(width: 4.0),
                                                            InkWell(
                                                              child: Text(
                                                                '$tag',
                                                                style: const TextStyle(
                                                                    color: Colors.white),
                                                              ),
                                                              onTap: () {
                                                                //print("$tag selected");
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }).toList()),
                                              ],
                                            ),
                                          )
                                              : null,
                                        ),
                                        onChanged: onChanged,
                                        onSubmitted: onSubmitted,
                                      ),
                                    );
                                  });
                                },
                              );
                            },
                          ),),
                      SizedBox(height: 5),
                      Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // width:265,
                                  height: 45,
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context, MaterialPageRoute(builder: (context) => ApplyToCompany3()));
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
                ),
              ),
            ],
          ),
        ));
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
