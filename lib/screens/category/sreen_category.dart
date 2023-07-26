import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:money_management_app/screens/category/expence_category.dart';
import 'package:money_management_app/screens/category/income_category.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({super.key});

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory> with SingleTickerProviderStateMixin{

    late TabController _tabController;
    @override
    void initState(){
      _tabController = TabController(length: 2, vsync: this);
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'INCOME',),
            Tab(text: 'EXPENSE'),
          ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              
              children: const [
                IncomeCategory(),
                ExpenseCategory(),
          
            ]),
          )
      ],
    );
  }
}