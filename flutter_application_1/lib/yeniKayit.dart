import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class yeniKayit extends StatefulWidget {
  const yeniKayit({super.key});

  @override
  State<yeniKayit> createState() => _yeniKayitState();
}

class _yeniKayitState extends State<yeniKayit> {
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
                  Padding(padding: EdgeInsets.only(top: 120)),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "İsim Soyisim Giriniz",
                          filled: true,
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "Telefon Numarası Giriniz",
                          filled: true,
                          fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
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
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
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
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          hintText: "Şifre Tekrar",
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
                            onPressed: () {}, child: Text("Kayıt Ol"))),
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
                      text: "Google ile Kaydol",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
