// Tâches récurrentes

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'customCardWidget.dart';

class Taches extends StatefulWidget {
  const Taches({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _TachesState();
  }

}

class _TachesState extends State<Taches> {
  String title = "Page 'Mes tâches'";

  bool isOn = false;
  int alarmId = 0;

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: ListView(
        // padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Tâches récurrentes",
                  style: TextStyle(fontSize: 35.0),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                      CupertinoSwitch(
                        value: isOn,
                        onChanged: (bool value) {
                          setState(() { isOn = value; });
                          AndroidAlarmManager.oneShot(
                            Duration(seconds: 1),
                            alarmId,
                            fireAlarm,
                          );
                          
                          if (!isOn) {
                            AndroidAlarmManager.cancel(alarmId);
                          }
                          },
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}

void fireAlarm() {
  print('Alarm Fired at ${DateTime.now()}');

  AndroidAlarmManager.oneShot(
    Duration(seconds: 1),
    0,
    fireAlarm,
  );
}
