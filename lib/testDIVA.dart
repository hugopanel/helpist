import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:helpist/main.dart';
import 'package:helpist/resultatDIVA.dart';


class TestDIVA extends StatefulWidget {
  TestDIVA({super.key});

  @override
  State<TestDIVA> createState() => _TestDIVAState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test DIVA'),
      ),
      body: Column(children: [
      Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Pour chacune des phrases ci-dessous, cochez la case si la phrase est vraie pour vous.',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.black54),
      ),
    ),]),
    );
    throw UnimplementedError();
  }
}
  class _TestDIVAState extends State<TestDIVA> {
    List<bool?> TvalueAttention = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];
    bool valueA1= false;
    int countA1=0;
    bool valueA2= false;
    int countA2=0;
    bool valueA3= false;
    int countA3=0;
    bool valueA4= false;
    int countA4=0;
    bool valueA5= false;
    int countA5=0;
    bool valueA6= false;
    int countA6=0;
    bool valueA7= false;
    int countA7=0;
    bool valueA8= false;
    int countA8=0;
    bool valueA9= false;
    int countA9=0;


    @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Pour chacune des phrases ci-dessous, cochez la case si la phrase est vraie pour vous.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black54),
            ),
          ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Avez-vous souvent du mal à prêter attention aux détails, ou faites-vous souvent des erreurs d’étourderie dans votre travail ou dans d’autres activités? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'A l`age adulte :',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
          ),
        CheckboxListTile(
            title: Text('Fait des erreurs d’étourderie'),
            value: TvalueAttention[0],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[0] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
            },);
            },),
          CheckboxListTile(
            title: Text('Travaille lentement pour éviter les erreurs'),
            value: TvalueAttention[1],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[1] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Facilement empêtré par les détails'),
            value: TvalueAttention[2],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[2] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Ne lit pas les instructions avec soin'),
            value: TvalueAttention[3],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[3] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),CheckboxListTile(
            title: Text('Du mal à travailler de façon minutieuse'),
            value: TvalueAttention[4],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[4] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Besoin de trop de temps pour mener à leur terme des tâches complexes'),
            value: TvalueAttention[5],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[5] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Travaille trop rapidement et commet ainsi des erreurs'),
            value: TvalueAttention[6],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[6] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
          CheckboxListTile(
            title: Text('Erreurs d’étourderie lors du travail scolaire'),
            value: TvalueAttention[7],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[7] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Erreurs parce qu’il ne lisait pas les questions correctement'),
            value: TvalueAttention[8],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[8] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Ne répondait pas à des questions parce qu’il ne les lisait pas correctement'),
            value: TvalueAttention[9],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[9] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Ne répondait pas aux questions posées au verso d’un examen'),
            value: TvalueAttention[10],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[10] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Les autres faisaient remarquer que le travail n’était pas soigné'),
            value: TvalueAttention[11],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[11] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Ne vérifiait pas ses réponses dans les devoirs scolaires'),
            value: TvalueAttention[12],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[12] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Besoin de trop de temps pour mener à leur terme des tâches minutieuses ou comportant de nombreux détails'),
            value: TvalueAttention[13],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[13] = value;
                if(value==true)countA1 ++;
                else countA1--;
                if(countA1/14 >= 1/3) valueA1= true;
                else valueA1= false;
              },);
            },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Trouvez-vous souvent difficile de soutenir votre attention sur une tâche? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A l`age adulte :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
          CheckboxListTile(
            title: Text('Incapable de maintenir son attention sur des tâches pendant longtemps*'),
            value: TvalueAttention[14],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[14] = value;
                if(value==true)countA2 ++;
                else countA2--;
                if(countA2/11 >= 1/3) valueA2= true;
                else valueA2= false;
              },);
            },),
          CheckboxListTile(
            title: Text('Facilement distrait par ses propres pensées ou associations d’idées'),
            value: TvalueAttention[15],
            onChanged: (bool? value) {
              setState(() {
                TvalueAttention[15] = value;
                if(value==true)countA2 ++;
                else countA2--;
                if(countA2/11 >= 1/3) valueA2= true;
                else valueA2= false;
              },);
            },),
            CheckboxListTile(
              title: Text('Difficile de suivre un film jusqu’à la fin, ou de lire un livre*'),
              value: TvalueAttention[16],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[16] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Rapidement ennuyé par les choses*'),
              value: TvalueAttention[17],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[17] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Pose des questions sur des sujets déjà discutés'),
              value: TvalueAttention[18],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[18] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '*A moins que le patient trouve le sujet particulièrement intéressant (par exemple, ordinateur ou hobby)',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13.0,
                color: Colors.black),
          ),
        ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Du mal à maintenir l’attention lors du travail scolaire'),
              value: TvalueAttention[19],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[19] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à maintenir l’attention sur un jeu*'),
              value: TvalueAttention[20],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[20] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Facilement distrait'),
              value: TvalueAttention[21],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[21] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à se concentrer*'),
              value: TvalueAttention[22],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[22] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Besoin d’un environnement structuré pour ne pas être distrait'),
              value: TvalueAttention[23],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[23] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Rapidement ennuyé dans des activités*'),
              value: TvalueAttention[24],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[24] = value;
                  if(value==true)countA2 ++;
                  else countA2--;
                  if(countA2/11 >= 1/3) valueA2= true;
                  else valueA2= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '*A moins que le patient trouve le sujet particulièrement intéressant (par exemple, ordinateur ou hobby)',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Donnez-vous souvent l’impression de ne pas écouter lorsqu’on vous parle directement? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A l`age adulte :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Rêveur ou préoccupé'),
              value: TvalueAttention[25],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[25] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à se concentrer pendant une conversation'),
              value: TvalueAttention[26],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[26] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Après-coup, ne se rappelle pas du sujet d’une conversation'),
              value: TvalueAttention[27],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[27] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Change souvent de sujet dans une conversation'),
              value: TvalueAttention[28],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[28] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            CheckboxListTile(
              title: Text('D’autres personnes vous disent que vos pensées sont ailleurs'),
              value: TvalueAttention[29],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[29] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Ne sait plus ce que les parents/enseignants ont dit'),
              value: TvalueAttention[30],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[30] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Rêveur ou préoccupé'),
              value: TvalueAttention[31],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[31] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            CheckboxListTile(
              title: Text('N’écoute qu’avec un contact visuel ou lorsque le ton est élevé'),
              value: TvalueAttention[32],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[32] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Doit souvent être interpelé'),
              value: TvalueAttention[33],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[33] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Les questions doivent être répétées'),
              value: TvalueAttention[34],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[34] = value;
                  if(value==true)countA3 ++;
                  else countA3--;
                  if(countA3/10 >= 1/3) valueA3= true;
                  else valueA3= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Avez-vous souvent du mal à vous conformer aux consignes et à mener à terme vos tâches domestiques ou vos obligations professionnelles? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A l`age adulte :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Fait plusieurs tâches en même temps sans les terminer'),
              value: TvalueAttention[35],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[35] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à finir les tâches une fois que la nouveauté a diminué'),
              value: TvalueAttention[36],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[36] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Besoin de fixer un délai pour terminer les tâches'),
              value: TvalueAttention[37],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[37] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à terminer les tâches administratives'),
              value: TvalueAttention[38],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[38] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à suivre les instructions dans un manuel'),
              value: TvalueAttention[39],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[39] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Du mal à suivre les instructions'),
              value: TvalueAttention[40],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[40] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            CheckboxListTile(
              title: Text('En difficulté lorsque les tâches comprennent plusieurs étapes successives'),
              value: TvalueAttention[41],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[41] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Ne termine pas les choses'),
              value: TvalueAttention[42],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[42] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Ne termine pas les devoirs ou ne les rend pas'),
              value: TvalueAttention[43],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[43] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Besoin d’un environnement structuré pour pouvoir terminer les tâches'),
              value: TvalueAttention[44],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[44] = value;
                  if(value==true)countA4 ++;
                  else countA4--;
                  if(countA4/10 >= 1/3) valueA4= true;
                  else valueA4= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Trouvez-vous souvent difficile d’organiser les tâches ou les activités? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A l`age adulte :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Du mal à planifier les activités de la vie quotidienne'),
              value: TvalueAttention[45],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[45] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('La maison ou l’espace de travail est en désordre'),
              value: TvalueAttention[46],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[46] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Planifie trop de tâches ou planification inefficace'),
              value: TvalueAttention[47],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[47] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Prévoit régulièrement de faire plusieurs choses au même moment'),
              value: TvalueAttention[48],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[48] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Arrive en retard'),
              value: TvalueAttention[49],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[49] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Incapable d’utiliser un agenda ou un journal de manière efficace'),
              value: TvalueAttention[50],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[50] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Rigide par nécessité de coller au programme'),
              value: TvalueAttention[51],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[51] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Faible conscience du temps'),
              value: TvalueAttention[52],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[52] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Établit des listes sans les utiliser'),
              value: TvalueAttention[53],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[53] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Besoin qu’un tiers structure les choses'),
              value: TvalueAttention[54],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[54] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Du mal à être prêt à temps'),
              value: TvalueAttention[55],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[55] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Chambre ou bureau en désordre'),
              value: TvalueAttention[56],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[56] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18>= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à jouer seul'),
              value: TvalueAttention[57],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[57] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à planifier des tâches ou ses devoirs'),
              value: TvalueAttention[58],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[58] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Fait les choses de manière confuse'),
              value: TvalueAttention[59],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[59] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Arrive en retard'),
              value: TvalueAttention[60],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[60] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Faible conscience du temps'),
              value: TvalueAttention[61],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[61] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18>= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à s’occuper seul'),
              value: TvalueAttention[62],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[62] = value;
                  if(value==true)countA5 ++;
                  else countA5--;
                  if(countA5/18 >= 1/3) valueA5= true;
                  else valueA5= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Évitez-vous souvent (ou avez-vous en aversion, ou faites-vous à contrecœur) les tâches qui nécessitent un effort mental soutenu? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A l`age adulte :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Fait en premier les choses les plus faciles ou les plus agréables'),
              value: TvalueAttention[63],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[63] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Remet à plus tard les tâches ennuyeuses ou difficiles'),
              value: TvalueAttention[64],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[64] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Remet à plus tard les choses jusqu’à dépasser les délais'),
              value: TvalueAttention[65],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[65] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Évite les tâches monotones, comme les tâches administratives'),
              value: TvalueAttention[66],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[66] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('N’aime pas lire à cause de l’effort mental'),
              value: TvalueAttention[67],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[67] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Évite des tâches qui demandent beaucoup de concentration'),
              value: TvalueAttention[68],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[68] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Évite des devoirs ou aversion pour les devoirs'),
              value: TvalueAttention[69],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[69] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Lit peu de livres ou n’aime pas lire à cause de l’effort mental'),
              value: TvalueAttention[70],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[70] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Évite des tâches qui demandent beaucoup de concentration'),
              value: TvalueAttention[71],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[71] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Déteste les sujets scolaires qui demandent beaucoup de concentration'),
              value: TvalueAttention[72],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[72] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Remet à plus tard les tâches ennuyeuses ou difficiles'),
              value: TvalueAttention[73],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[73] = value;
                  if(value==true)countA6 ++;
                  else countA6--;
                  if(countA6/11 >= 1/3) valueA6= true;
                  else valueA6= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Perdez-vous souvent les objets nécessaires à votre travail ou vos activités? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A l`age adulte :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Égare portefeuille, clés, ou agenda'),
              value: TvalueAttention[74],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[74] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Oublie des choses en quittant un lieu'),
              value: TvalueAttention[75],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[75] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Perd des papiers pour son travail'),
              value: TvalueAttention[76],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[76] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Perd beaucoup de temps à chercher des choses'),
              value: TvalueAttention[77],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[77] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Panique si des gens ont changé des choses de place'),
              value: TvalueAttention[78],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[78] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Range les choses au mauvais endroit'),
              value: TvalueAttention[79],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[79] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Perd des notes, listes ou numéros de téléphone'),
              value: TvalueAttention[80],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[80] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Perd l’agenda, les stylos, les affaires de gymnastique ou d’autres choses'),
              value: TvalueAttention[81],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[81] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Égare des jouets, habits ou devoirs scolaires'),
              value: TvalueAttention[82],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[82] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Perd beaucoup de temps à chercher des choses'),
              value: TvalueAttention[83],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[83] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Panique si des gens ont changé des choses de place'),
              value: TvalueAttention[84],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[84] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Les parents et/ou les enseignants font remarquer qu’il a perdu des choses'),
              value: TvalueAttention[85],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[85] = value;
                  if(value==true)countA7 ++;
                  else countA7--;
                  if(countA7/12 >= 1/3) valueA7= true;
                  else valueA7= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Vous laissez-vous facilement distraire par des stimuli externes? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A l`age adulte :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Du mal à ignorer des stimuli externes'),
              value: TvalueAttention[86],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[86] = value;
                  if(value==true)countA8 ++;
                  else countA8--;
                  if(countA8/8 >= 1/3) valueA8= true;
                  else valueA8= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à reprendre les choses après avoir été distrait'),
              value: TvalueAttention[87],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[87] = value;
                  if(value==true)countA8 ++;
                  else countA8--;
                  if(countA8/8 >= 1/3) valueA8= true;
                  else valueA8= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Facilement distrait par des bruits ou des événements'),
              value: TvalueAttention[88],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[88] = value;
                  if(value==true)countA8 ++;
                  else countA8--;
                  if(countA8/8 >= 1/3) valueA8= true;
                  else valueA8= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Facilement distrait par une conversation entre d’autres personnes'),
              value: TvalueAttention[89],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[89] = value;
                  if(value==true)countA8 ++;
                  else countA8--;
                  if(countA8/8 >= 1/3) valueA8= true;
                  else valueA8= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à filtrer et/ou sélectionner des informations'),
              value: TvalueAttention[90],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[90] = value;
                  if(value==true)countA8 ++;
                  else countA8--;
                  if(countA8/8 >= 1/3) valueA8= true;
                  else valueA8= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('En classe, il regarde souvent dehors'),
              value: TvalueAttention[91],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[91] = value;
                  if(value==true)countA8 ++;
                  else countA8--;
                  if(countA8/8 >= 1/3) valueA8= true;
                  else valueA8= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Facilement distrait par des bruits ou des événements'),
              value: TvalueAttention[92],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[92] = value;
                  if(value==true)countA8 ++;
                  else countA8--;
                  if(countA8/8 >= 1/3) valueA8= true;
                  else valueA8= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Du mal à reprendre les choses après avoir été distrait'),
              value: TvalueAttention[93],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[93] = value;
                  if(value==true)countA8 ++;
                  else countA8--;
                  if(countA8/8 >= 1/3) valueA8= true;
                  else valueA8= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Avez-vous des oublis fréquents dans la vie quotidienne? Comment était-ce dans votre enfance?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A l`age adulte :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Oublie des rendez-vous ou des obligations'),
              value: TvalueAttention[94],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[94] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Oublie les clés, l’agenda, etc.'),
              value: TvalueAttention[95],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[95] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('A besoin de rappels fréquents concernant les rendez-vous'),
              value: TvalueAttention[96],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[96] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Retourne sur ses pas pour prendre des choses oubliées'),
              value: TvalueAttention[97],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[97] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Utilise des programmes rigides pour être sûr de ne rien oublier'),
              value: TvalueAttention[98],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[98] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Ne tient pas à jour son agenda et/ou oublie de consulter son agenda'),
              value: TvalueAttention[99],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[99] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pendant l`enfance :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
            ),
            CheckboxListTile(
              title: Text('Oublie des rendez-vous ou des consignes'),
              value: TvalueAttention[100],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[100] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('On doit souvent lui rappeler les choses'),
              value: TvalueAttention[101],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[101] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('S’arrête en chemin parce qu’il a oublié ce qu’il devait faire'),
              value: TvalueAttention[102],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[102] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Oublie d’apporter des affaires scolaires'),
              value: TvalueAttention[103],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[103] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            CheckboxListTile(
              title: Text('Oublie des choses à l’école ou chez des amis'),
              value: TvalueAttention[104],
              onChanged: (bool? value) {
                setState(() {
                  TvalueAttention[104] = value;
                  if(value==true)countA9 ++;
                  else countA9--;
                  if(countA9/11 >= 1/3) valueA9= true;
                  else valueA9= false;
                },);
              },),
            ButtonBar(
              children: [
                ElevatedButton(
                    child: Text("Résultat"),
                    onPressed: () {
                      var overall = 0.0;
                      if(valueA1)overall=overall+10;
                      if(valueA2)overall=overall+10;
                      if(valueA3)overall=overall+10;
                      if(valueA4)overall=overall+10;
                      if(valueA5)overall=overall+10;
                      if(valueA6)overall=overall+10;
                      if(valueA7)overall=overall+10;
                      if(valueA8)overall=overall+10;
                      if(valueA9)overall=overall+10;
                      var count = TvalueAttention.where((item) => item == true).length;
                      print(count);
                      if(count > 70)overall = overall + 10;
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return resultatDIVA(
                                var1:overall
                            );
                          }
                      ));
                    }
                )
              ],
            ),
            SizedBox(height: 50),

        ]),
        )
        );
  }

}

