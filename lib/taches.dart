// Tâches récurrentes

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:helpist/Models/Jour.dart';
import 'package:helpist/Models/Tache.dart';
import 'package:helpist/db/database.dart';

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

  // late List<Tache> taches;

  @override
  void initState() {
    super.initState();

    // On récupère la liste des tâches
    getTaches();
  }

  Future<List<Tache>> getTaches() async {
    var taches = await TachesDatabase.instance.readAllTaches();
    return taches;
  }

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
        ),
        child: FutureBuilder(
            future: getTaches(),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const CircularProgressIndicator();
              } else {
                if (snapshot.data == null) {
                  return Text("Impossible de récupérer la liste des tâches !");
                } else {
                  List<Tache> taches = snapshot.data as List<Tache>;
                  return ListView(
                      // padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Tâches récurrentes",
                            style: TextStyle(fontSize: 35.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              CupertinoButton.filled(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) => ModifierTaches(
                                            // Pour ajouter une nouvelle tâche, on prend
                                            // l'id de la dernière tâche + 1 :
                                            tacheId: 0),
                                      ));
                                },
                                child: const Text('Ajouter une tâche'),
                              ),
                              const SizedBox(height: 30),
                              CupertinoSwitch(
                                value: isOn,
                                onChanged: (bool value) {
                                  setState(() {
                                    isOn = value;
                                  });
                                  AndroidAlarmManager.oneShot(
                                    const Duration(seconds: 1),
                                    alarmId,
                                    fireAlarm,
                                  );

                                  if (!isOn) {
                                    AndroidAlarmManager.cancel(alarmId);
                                  }
                                },
                              ),
                              if (snapshot.connectionState !=
                                  ConnectionState.done)
                                const CircularProgressIndicator()
                              else if (taches.isEmpty)
                                const Text(
                                    "Il n'existe aucune tâche. Créez-en une nouvelle !")
                              else
                                for (var tache in taches)
                                  CupertinoFormRow(
                                    child: CupertinoSwitch(
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    prefix: CupertinoButton(
                                      child:
                                          Text("Tâche " + tache.id.toString()),
                                      onPressed: () {},
                                    ),
                                  ),
                            ],
                          ),
                        ),
                      ]);
                }
              }
            }));
  }
}

void _callModifierTaches(BuildContext context, int tacheId) {
  Navigator.push(
    context,
    CupertinoPageRoute(builder: (context) => ModifierTaches(tacheId: tacheId)),
  );
}

void fireAlarm() {
  debugPrint('Alarm Fired at ${DateTime.now()}');

  AndroidAlarmManager.oneShot(
    const Duration(seconds: 1),
    0,
    fireAlarm,
  );
}

class ModifierTaches extends StatefulWidget {
  final int tacheId;

  ModifierTaches({Key? key, required this.tacheId}) : super(key: key);

  @override
  _ModifierTachesState createState() {
    return _ModifierTachesState();
  }
}

class _ModifierTachesState extends State<ModifierTaches> {
  // On récupère les informations sur la tâche
  @override
  void initState() {
    super.initState();

    // tache = getTache() as Tache;
    //
    // lundiSwitchValue = tache.jours.contains(Jour.lundi);
  }

  Future<Tache> getTache() async {
    if (await TachesDatabase.instance.existsTache(widget.tacheId)) {
      return TachesDatabase.instance.readTache(widget.tacheId);
    } else {
      TachesDatabase.instance.create(Tache(
          id: widget.tacheId,
          nom: "Tache " + widget.tacheId.toString(),
          active: false,
          horaire: DateTime.now(),
          jours: [Jour.lundi]));
      return TachesDatabase.instance.readTache(widget.tacheId);
    }
  }
  late Tache tache;

  late bool lundiSwitchValue;
  late bool mardiSwitchValue;
  late bool mercrediSwitchValue;
  late bool jeudiSwitchValue;
  late bool vendrediSwitchValue;
  late bool samediSwitchValue;
  late bool dimancheSwitchValue;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Ajouter et modifier une tâche"),
        ),
        child: FutureBuilder(
          future: getTache(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const CircularProgressIndicator();
            } else {
              if (snapshot.data == null) {
                return const Text("Erreur lors de la récupération de la tâche.");
              } else {
                var tache = snapshot.data as Tache;
                lundiSwitchValue = tache.jours.contains(Jour.lundi);
                mardiSwitchValue = tache.jours.contains(Jour.mardi);
                mercrediSwitchValue = tache.jours.contains(Jour.mercredi);
                jeudiSwitchValue = tache.jours.contains(Jour.jeudi);
                vendrediSwitchValue = tache.jours.contains(Jour.vendredi);
                samediSwitchValue = tache.jours.contains(Jour.samedi);
                dimancheSwitchValue = tache.jours.contains(Jour.dimanche);

                final TextEditingController _controller =
                TextEditingController(text: tache.nom);


                return ListView(
                  // padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Tâches récurrentes",
                          style: TextStyle(fontSize: 35.0),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text("Nom de la tâche : "),
                                ],
                              ),
                              CupertinoTextField(controller: _controller),
                              const SizedBox(height: 30),
                              Row(children: const [Text("Heure : ")]),
                              CupertinoTimerPicker(
                                onTimerDurationChanged: (duration) => {},
                              ),
                              const SizedBox(height: 30),
                              Row(children: const [Text("Jours : ")]),
                              CupertinoFormSection(
                                // header: Text("Jours actifs"),
                                children: <Widget>[
                                  CupertinoFormRow(
                                    child: CupertinoSwitch(
                                        value: lundiSwitchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            lundiSwitchValue = value;
                                          });
                                        }),
                                    prefix: const Text('Lundi'),
                                  ),
                                  CupertinoFormRow(
                                    child: CupertinoSwitch(
                                        value: mardiSwitchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            mardiSwitchValue = value;
                                          });
                                        }),
                                    prefix: const Text('Mardi'),
                                  ),
                                  CupertinoFormRow(
                                    child: CupertinoSwitch(
                                        value: mercrediSwitchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            mercrediSwitchValue = value;
                                          });
                                        }),
                                    prefix: Text('Mercredi'),
                                  ),
                                  CupertinoFormRow(
                                    child: CupertinoSwitch(
                                        value: jeudiSwitchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            jeudiSwitchValue = value;
                                          });
                                        }),
                                    prefix: const Text('Jeudi'),
                                  ),
                                  CupertinoFormRow(
                                    child: CupertinoSwitch(
                                        value: vendrediSwitchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            vendrediSwitchValue = value;
                                          });
                                        }),
                                    prefix: Text('Vendredi'),
                                  ),
                                  CupertinoFormRow(
                                    child: CupertinoSwitch(
                                        value: samediSwitchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            samediSwitchValue = value;
                                          });
                                        }),
                                    prefix: Text('Samedi'),
                                  ),
                                  CupertinoFormRow(
                                    child: CupertinoSwitch(
                                        value: dimancheSwitchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            dimancheSwitchValue = value;
                                          });
                                        }),
                                    prefix: const Text('Dimanche'),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              CupertinoButton.filled(
                                  child: const Text("Enregistrer"),
                                  onPressed: () {
                                    // Sauvegarder dans la base de données
                                    debugPrint("Valeur :");
                                    debugPrint(_controller.value.text);

                                    // On ajoute tous les jours
                                    List<Jour> jours = {} as List<Jour>;
                                    if (lundiSwitchValue) jours.add(Jour.lundi);
                                    if (mardiSwitchValue) jours.add(Jour.mardi);
                                    if (mercrediSwitchValue) jours.add(Jour.mercredi);
                                    if (jeudiSwitchValue) jours.add(Jour.jeudi);
                                    if (vendrediSwitchValue) jours.add(Jour.vendredi);
                                    if (samediSwitchValue) jours.add(Jour.samedi);
                                    if (dimancheSwitchValue) jours.add(Jour.dimanche);

                                    // On crée une nouvelle tâche pour remplacer
                                    // la précédente (avec le même id donc)
                                    Tache newTache = new Tache(
                                      id: tache.id,
                                      nom: _controller.text,
                                      active: tache.active,
                                      horaire: tache.horaire,
                                      jours: jours
                                    );
                                    TachesDatabase.instance.update(newTache);

                                    // Revenir à la page précédente
                                    Navigator.pop(context);
                                  })
                            ],
                          )),
                    ]);
              }
            }
          },
        ));
  }
}
