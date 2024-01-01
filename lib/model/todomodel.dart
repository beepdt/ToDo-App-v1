import 'package:flutter/material.dart';

class Custom_Tile extends StatefulWidget {
  const Custom_Tile({Key? key,
    required this.title}):super(key:key);
  final String title;


  @override
  State<Custom_Tile> createState() => _Custom_TileState();
}

class _Custom_TileState extends State<Custom_Tile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        print('tapped');
      },
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),
      tileColor: Theme.of(context).colorScheme.secondary,
      leading: IconButton(
        onPressed: (){
          setState(() {
            isChecked = !isChecked;
          });
        },
        icon: Icon(isChecked ? Icons.check_box_outline_blank_rounded:Icons.check_box_rounded, color: Theme.of(context).colorScheme.tertiaryContainer,size: 32),
      ),
      title: Text(widget.title, style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 20, fontWeight: FontWeight.w400, decoration: isChecked?null:TextDecoration.lineThrough)),
      trailing: Container(
        padding: EdgeInsets.zero,
        child: IconButton(
          onPressed: () {
            print('pressed');
          },
          icon: const Icon(Icons.delete_outline_rounded),
        ),
      ),
    );
  }
}
