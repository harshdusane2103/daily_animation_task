import 'package:daily_animation_task/Hero/second.dart';
import 'package:flutter/material.dart';
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
          SizedBox(height: 60,),
          Center(
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(color: Colors.black,width: 0.5)/
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>secondPage()));
                    },
                    child: Hero(
                      tag:'contect',
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUyllrW-u-01_B8qMki4ybHzbhuBWhUq3pMA&s')
                      ),
                    ),
                  ),
                  Text('HARSH DUSANE'),
                  Icon(Icons.call)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
