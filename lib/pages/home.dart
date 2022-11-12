import 'package:flutter/material.dart';
import 'dart:io';
import './biografi.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UTS'), automaticallyImplyLeading: false),
      body: Container(
        height: 10000,
        width: 10000,
        color: Colors.orange[300],
        padding: EdgeInsets.all(30),
        child: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.green[300],
          child: Column(
            children: [
              Text(
                "Biografi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "Muhammad Dani Haikal",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Image.asset(
                    'assets/images/gambar1.jpg',
                  )),
              Container(
                width: 400,
                padding: EdgeInsets.only(left: 5, right: 5),
                // decoration: BoxDecoration(border: Border.all(width: 2)),
                child: Text(
                  "Saya Muhammad Dani Haikal seorang mahasiswa semester 5 Teknik Informatika Politeknik Harapan Bersama Tegal.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                width: 300,
                // decoration: BoxDecoration(border: Border.all(width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BiografiPage()))
                      },
                      child: Text('Biografi Lengkap'),
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[400])),
                    ),
                    ElevatedButton(
                      onPressed: () => {exit(0)},
                      child: Text('Keluar'),
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[400])),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
