import 'package:flutter/material.dart';
import 'package:flutter_application_1/anasayfa.dart';
import 'package:flutter_application_1/yeniKayit.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/deneme2.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 200)),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "E-Mail Giriniz",
                          filled: true,
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, right: 10, left: 10),
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          hintText: "Şifre",
                          filled: true,
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                        height: 80,
                        width: 280,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => anasayfa()),
                              );
                            },
                            child: Text("Giriş Yap"))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                        "---------------------------------- veya ----------------------------------"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SignInButton(
                      Buttons.Google,
                      text: "Google ile Giriş Yap",
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: TextButton(
                        child: Text("Yeni Kayıt Olmak İstiyorum"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => yeniKayit()),
                          );
                        }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
