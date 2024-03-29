import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';
import 'package:schoolmanagementapp/widgets/custom_paint.dart';

class ExaminationSchedule extends StatelessWidget {
  final ExamType arguments;
  ExaminationSchedule(this.arguments);

  @override
  Widget build(BuildContext context) { 
    var size = MediaQuery.of(context).size;
    print( size.height*0.1);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                width: double.infinity,
                height: size.height * 0.091,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        
                          color: Color.fromRGBO(44, 44, 44, 1),
                          onPressed: () {
                            Navigator.pop(context);
                           
                          },
                        ),
                        Center(
                          child: Text(
                            'Examination',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset('assets/Assets/nitificationicon.png'),

                      ],
                    );
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top:10),
                  width: size.width * 0.8,
                  
                  height:64,     
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListTile(
                      title: Column(
                        children: [
                          Text(
                            arguments.name,
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            arguments.date,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColors.customcolor),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exam Note',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                            'The marks of this exam is going to be added and combined for final term'),
                        SizedBox(height: 5),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                              TextSpan(
                                text: 'Start Time:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '02/08/2020'),
                            ])),
                      ])),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Exam Schedule',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Day',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(width: 80),
                            Text(
                              'Subject',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ]),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('SUN'),
                                Text('08-02'),
                              ],
                            ),
                            SizedBox(width: 10),
                            TimeLineWigdet(),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width: size.width*0.7,
                              child: Card(
                                  // margin: EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Mathematics'),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: MyColors.customcolor,
                                          ),
                                          child: Text(
                                            '10:00 AM - 1:00 PM',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ])),
                            ),
                          ]),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('SUN'),
                                //  Text('${dt.hour.toString()}-${dt.hour.toString()}'),
                                Text('08-02')
                              ],
                            ),
                            SizedBox(width: 10),
                            TimeLineWigdet(),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width:  size.width*0.7,
                              child: Card(
                                  // margin: EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Mathematics'),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: MyColors.customcolor,
                                          ),
                                          child: Text(
                                            '10:00 AM - 1:00 PM',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ])),
                            ),
                          ]),
                    ),
                     Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('SUN'),
                                //  Text('${dt.hour.toString()}-${dt.hour.toString()}'),
                                Text('08-02')
                              ],
                            ),
                            SizedBox(width: 10),
                            TimeLineWigdet(),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width:  size.width*0.7,
                              child: Card(
                                  // margin: EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Mathematics'),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: MyColors.customcolor,
                                          ),
                                          child: Text(
                                            '10:00 AM - 1:00 PM',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ])),
                            ),
                          ]),
                    ),
                     Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('SUN'),
                                //  Text('${dt.hour.toString()}-${dt.hour.toString()}'),
                                Text('08-02')
                              ],
                            ),
                            SizedBox(width: 10),
                            TimeLineWigdet(),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width:  size.width*0.7,
                              child: Card(
                                  // margin: EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Mathematics'),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: MyColors.customcolor,
                                          ),
                                          child: Text(
                                            '10:00 AM - 1:00 PM',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ])),
                            ),
                          ]),
                    ),
                     Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('SUN'),
                                //  Text('${dt.hour.toString()}-${dt.hour.toString()}'),
                                Text('08-02')
                              ],
                            ),
                            SizedBox(width: 10),
                            TimeLineWigdet(),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width:  size.width*0.7,
                              child: Card(
                                  // margin: EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Mathematics'),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: MyColors.customcolor,
                                          ),
                                          child: Text(
                                            '10:00 AM - 1:00 PM',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ])),
                            ),
                          ]),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('SUN'),
                                Text('08-02'),
                              ],
                            ),
                            SizedBox(width: 10),
                            TimeLineWigdet(),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width:  size.width*0.7,
                              child: Card(
                                // margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Mathematics'),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: MyColors.customcolor,
                                        ),
                                        child: Text(
                                          '10:00 AM - 1:00 PM',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(0.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('SUN'),
                                Text('08-02'),
                              ],
                            ),
                            SizedBox(width: 10),
                            TimeLineWigdet(),
                            SizedBox(width: 10),
                            Container(
                              height: 75,
                              width:  size.width*0.7,
                              child: Card(
                                  // margin: EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Mathematics'),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: MyColors.customcolor,
                                          ),
                                          child: Text(
                                            '10:00 AM - 1:00 PM',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ])),
                            ),
                          ]),
                    ),
                  ]),
            )
          ]),
        ),
      )),
    );
  }
}
    class ExamType {
      final String name;
      final String date;

  static ExamType arguments;

      ExamType(this.name, this.date);
    }