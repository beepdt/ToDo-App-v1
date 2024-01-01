import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/pages/home.dart';

class AddToDoPage extends StatefulWidget {
  const AddToDoPage({super.key});

  @override
  State<AddToDoPage> createState() => _AddToDoPageState();
}

class _AddToDoPageState extends State<AddToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar:_buildAppBar2(context),
    );
  }
  void navigateToHome (){
    final route = MaterialPageRoute(
      builder: (context) => HomePage(),
    );
    Navigator.push(context, route);
  }

  AppBar _buildAppBar2(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.primary,
      leading: IconButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        onPressed: (){
          navigateToHome();
        },
        icon: Icon(Icons.arrow_back, size: 30,),
      ),
      centerTitle: true,
      title: Text('Add ToDo', style: TextStyle(fontFamily: 'Thunder', fontSize: 35),),
    );
  }
}
