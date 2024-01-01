

import 'package:flutter/material.dart';
import 'package:todo_app/model/todomodel.dart';
import 'package:todo_app/pages/addPage.dart';
import 'package:todo_app/widgets/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            //search bar//
            _buildSearchBar(context),
            const SizedBox(height: 20,),
            //tasks//
            const Text('Tasks', style: TextStyle(fontFamily:'Thunder',fontWeight: FontWeight.bold, fontSize: 70),),
            const SizedBox(height: 20,),
            //list//
            Expanded(
              child: ListView(
                children: [
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                ],
              ),
            )
          ],
        )
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  void navigateToAddPage() {
    final route = MaterialPageRoute(
      builder: (context) => AddToDoPage(),
    );
    Navigator.push(context, route);
  }

  Container _buildSearchBar(BuildContext context) {
    return Container(
            padding: const EdgeInsets.symmetric(horizontal:2),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton.extended(
      onPressed: (){
        navigateToAddPage();
      },
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      foregroundColor: Theme.of(context).colorScheme.primary,
      elevation: 10,
      label: Text('Add', style: TextStyle(fontWeight: FontWeight.bold,)),
      icon: const Icon(Icons.add,size: 20,),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.primary,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Container(
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu, size: 30),
            Icon(Icons.change_circle_rounded, size: 30),
          ],
        ),
      )

    );
  }
}
