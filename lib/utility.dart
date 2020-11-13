import 'package:flutter/material.dart';

DateTime _dateTime;
String choosenDate;

class UtilityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          'My Utilities',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 200,
                color: Colors.grey,
                padding: const EdgeInsets.all(10),
                child: Text("Select Date", textAlign: TextAlign.center),
              ),
              Dates(),
            ],
          ),
          Divider(
            height: 20.0,
          ),
          BillPicture(),
        ],
      ),
    );
  }
}

class Dates extends StatefulWidget {
  @override
  _DatesState createState() => _DatesState();
}

class _DatesState extends State<Dates> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          showDatePicker(
                  context: context,
                  initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                  firstDate: DateTime(2019),
                  lastDate: DateTime(2030))
              .then((date) {
            setState(() {
              _dateTime = date;
            });
          });
          return choosenDate = _dateTime.month.toString();
        },
        child: Text(
          _dateTime == null
              ? 'Select any date in a month'
              : _dateTime.toString(),
        ),
      ),
    );
  }
}

class BillPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        fit: BoxFit.fitWidth,
        image: AssetImage('assets/images/bill.jpg', ),
      ),
    );
  }
}
