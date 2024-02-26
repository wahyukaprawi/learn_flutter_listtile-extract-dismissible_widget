import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn List Tile Widget'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Pung Anto'),
              subtitle: Text('bisa kirimkan uang?'),
              leading: CircleAvatar(),
              trailing: Text('20.51'),
              onTap: () {
                return;
              },
            ),
            ListTile(
              title: Text('Fadel Mentemas'),
              subtitle: Text('kmri jo'),
              leading: CircleAvatar(),
              trailing: Text('20.21'),
              onTap: () {
                return;
              },
            ),
            ListTile(
              title: Text('Alamsyah'),
              subtitle: Text('tmn akan kta k kampus uti beso'),
              leading: CircleAvatar(),
              trailing: Text('18.40'),
              onTap: () {
                return;
              },
            ),
            ListTile(
              title: Text('Pak Arif Dwinanto'),
              subtitle: Text('Assalamualaikum, Wr. Wb., Maaf menggangu waktunya pak saya Muhammad Aidil Wahyudi Kaprawi',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('18.26'),
              onTap: () {
                return;
              },
            ),
          ],
        )
      )
    );
  }
}