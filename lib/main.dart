import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Learn List Tile Widget'),
            ),
            body: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Dismissible(
                  confirmDismiss: (direction) {
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('CONFIRM'),
                            content: Text("Are you sure to delete this item"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                Navigator.of(context).pop(false);
                                },
                                child: Text('No')
                              ),
                              TextButton(
                                onPressed: () {
                                Navigator.of(context).pop(true);
                                },
                                child: Text('Yes')
                              )
                            ],
                          );
                        });
                  },
                  key: Key(index.toString()),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    child: Icon(
                      Icons.delete,
                      size: 28,
                    ),
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 15),
                  ),
                  child: ListItem(
                    imagesurl: "https://picsum.photos/id/$index/200/300",
                    title: faker.person.name(),
                    subtitle: faker.lorem.sentence(),
                  ),
                );
              },
            )));
  }
}

class ListItem extends StatelessWidget {
  final String imagesurl;
  final String title;
  final String subtitle;

  ListItem(
      {required this.imagesurl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imagesurl),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text('18.00 PM'),
      onTap: () {
        return;
      },
    );
  }
}
