import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IncomeCategory extends StatelessWidget {
  const IncomeCategory({super.key});

  @override
Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.black,
        elevation: 3,
        
        child: ListView.separated(
          
          itemBuilder: (context,index) {
            return ListTile(
              
              title: Text(' Income Category $index', style: TextStyle(fontWeight: FontWeight.bold,),
               ),
              trailing: IconButton(onPressed: () {}, 
              icon: Icon(Icons.delete)),
            );
          },
          separatorBuilder: (context,index){
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: 100,
        ),
      ),
    );
  }
}