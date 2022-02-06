import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderSide: BorderSide(color: const Color(0xFFeceff1), width: 2),
      borderRadius: BorderRadius.all(Radius.circular(36)),
    );
    const linkTextStyle = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18, color: Color(0xFF0079D0));

    return MaterialApp(
      home: Scaffold(
          body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              width: 110,
              height: 84,
              child: Placeholder(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Введите логин 10 цифр номера телефона',
              style:
                  TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),
            ),
            SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 224,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: 'Телефон',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 224,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: 'Пароль',
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            SizedBox(
                width: 154,
                height: 42,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('ENTER'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0079D0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0),
                        )))),
            SizedBox(
              height: 32,
            ),
            InkWell(
                child:  Text('Регистрация',
                    style: linkTextStyle),
                    onTap: () {}),
            SizedBox(
              height: 20,
            ),
            InkWell(
                child:  Text('Забыли пароль',
                    style: linkTextStyle),
                    onTap: () {}),
          ],
        ),
      )),
    );
  }
}
