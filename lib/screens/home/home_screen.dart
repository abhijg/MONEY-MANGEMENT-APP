import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:money_management_app/screens/category/sreen_category.dart';
import 'package:money_management_app/screens/home/widgets/bottom_nav.dart';
import 'package:money_management_app/screens/transaction/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = const [ScreenTranstion(), ScreenCategory()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 51, 47),
      appBar: AppBar(
        title: Center(child: Text('MONEY MANAGER')),
        backgroundColor: Color.fromARGB(255, 9, 159, 159),
      ),
      bottomNavigationBar: const MoneyMangeBottamNavi(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updateIndex, _) {
            return _pages[updateIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print('Add transactions');
          } else {
            print('Add category');
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
