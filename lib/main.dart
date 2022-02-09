import 'package:auth_page/extended_demo_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      //    const ExpandedDemoScreen());
      const MyApp());
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
        fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF0079D0));

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 160,
              ),
              const SizedBox(
                width: 110,
                height: 84,
                child: Image(image: AssetImage('assets/dartlogo.png')),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Введите логин 10 цифр номера телефона',
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: 'Телефон',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  labelText: 'Пароль',
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
                      child: Text('ВХОД'),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          )))),
              SizedBox(
                height: 32,
              ),
              InkWell(
                  child: Text('Регистрация', style: linkTextStyle),
                  onTap: () {}),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  child: Text('Забыли пароль', style: linkTextStyle),
                  onTap: () {}),
            ],
          ),
        ),
      )),
    );
  }
}
