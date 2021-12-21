

import 'package:flutter/material.dart';
import 'package:myquize_app/my_appbar.dart';
import 'package:myquize_app/questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    'assets/images/q1_mohiuddin.jpg',
    'assets/images/q2_hamidur.jpg',
    'assets/images/q3_mostofa.jpg',
    'assets/images/q4_ruhul.jpg',
    'assets/images/q5_motiur.png',
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(),
        color: Colors.blueAccent,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Text(
                  '${index+1}/${images.length} \nQuestions',
                  textAlign: TextAlign.center,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  child: ClipOval(
                    child: Image.asset(images[index], fit: BoxFit.cover,),
                  ),
                ),
                const Text(
                  '0 \nScore',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text('Guess who is this?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                if(index < 4){
                  index++;
                }else{
                  index=0;
                }
                setState(() {

                });
              }, child: const Text('Next', style: TextStyle(color: Colors.white),)),
            ),
            const SizedBox(
              height: 16,
            ),
             BuildListTile(
              serial: 'A',
              option: questions[index].opt1,
              trail: Icon(null),
            ),
            const SizedBox(height: 16,),
             BuildListTile(
              serial: 'B',
              option: questions[index].opt2,
              trail: Icon(null),
            ),
            const SizedBox(height: 16,),
             BuildListTile(
              serial: 'C',
              option: questions[index].opt3,
              trail: Icon(null),
            ),
            const SizedBox(height: 16,),
             BuildListTile(
              serial: 'D',
              option: questions[index].op4,
              trail: Icon(null),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildListTile extends StatelessWidget {
  const BuildListTile({
    required this.serial,
    required this.option,
    required this.trail,
    Key? key,
  }) : super(key: key);

  final String serial;
  final String option;
  final Icon trail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(35)),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(serial),
        ),
        title: Text(option),
        trailing: trail,
      ),
    );
  }
}
