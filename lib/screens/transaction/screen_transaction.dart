import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenTranstion extends StatelessWidget {
  const ScreenTranstion({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return const Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 84, 16, 123),
                  child: Text(
                    '22\n oct',
                    textAlign: TextAlign.justify,
                  )),
              title: Text("10000"),
              subtitle: Text('Travel  '),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 10);
  }
}
