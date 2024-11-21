import 'package:flutter/material.dart';
class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body:Center(
        child: Hero(
          tag:'contect',
          child: CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUyllrW-u-01_B8qMki4ybHzbhuBWhUq3pMA&s'),
          ),
        ),
      ),

    );
  }
}
