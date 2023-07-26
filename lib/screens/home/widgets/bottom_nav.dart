import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:money_management_app/screens/home/home_screen.dart';

class MoneyMangeBottamNavi extends StatelessWidget {
  const MoneyMangeBottamNavi({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier ,
      builder: (BuildContext context, int updateIndex, Widget? _) { 
        return BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
        currentIndex: updateIndex,
        onTap: (newIndex){
          ScreenHome.selectedIndexNotifier.value = newIndex;
        },
        items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Transction'),
        BottomNavigationBarItem(icon: Icon(Icons.category),
        label: 'Category'),
    
      ]);
       },
      
    );
  }
}