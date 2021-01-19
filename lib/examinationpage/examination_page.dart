import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/assests/colors.dart';
import 'package:schoolmanagementapp/examinationpage/examinationcard.dart';

class ExaminationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Examination',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.alarm,
              color:  MyColors.purplecolor,
            ),
          )
        ],
      ),
      body: Container(
        padding:  EdgeInsets.only(top: 10),
        child:SingleChildScrollView(
          child:ExaminationCard(),
           ))
    );
  }
}

