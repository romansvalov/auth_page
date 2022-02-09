import 'package:flutter/material.dart';

class ExpandedDemoScreen extends StatelessWidget {
  const ExpandedDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20) ,
        child: Column(children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'lkbyysq kfvnirgnvlkrntgklnrt brtngkrt gvkn4tj gkj4ntgkj4tgjk 4tkg ntkj45ntg  текст',
                style: TextStyle(fontSize: 18),
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.amber,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box_rounded),
                  )
                ),
              ),
              Expanded(
                  child: ElevatedButton(onPressed: () {}, child: Text('Enter'))),
            ],
          )
        ]),
      ),
    ));
  }
}
