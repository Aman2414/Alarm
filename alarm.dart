import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alarm extends StatefulWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  bool isActive = false;

  var data = [
    {
      "isON": true,
    },
    {
      "isON": false,
    },
    {
      "isON": false,
    },
    {
      "isON": false,
    },
    {
      "isON": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return CupertinoSwitch(
                  value: data[index]["isON"] == true,
                  onChanged: (value) {
                    setState(() {
                      data[index]["isON"] = value;
                    });
                  });
            },
            separatorBuilder: (context, int index) {
              return Divider();
            },
          ),
        ),
      ),
    );
  }
}
