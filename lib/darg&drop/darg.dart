// import 'package:flutter/material.dart';
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Fruit Game'),
//       ),
//       body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ...List.generate(6, (index)=>Draggable(
//                 data: fruits[index],
//                 child:Text(fruits[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),feedback: Text(fruits[index],style: TextStyle(fontSize: 20,color: Colors.amber),)),),
//           ],
//
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ...List.generate(6
//                 , (index)=>DragTarget(
//               onAcceptWithDetails: (details){
//                setState((){
//                  if(details.data==targets[index])
//                    {
//                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.green,content: Text('Object Matched SuceessFully !')));
//                    }
//                  else
//                    {
//                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.red,content: Text('Seleted vailed Options !')));
//                    }
//                });
//               },
//               builder: (context,candidateData,rejectedData)=> SizedBox(
//                 height: 120,
//                 width: 150,
//                 child: Image.network(images[index],fit: BoxFit.cover,),
//               ),
//             ))
//           ],
//         ),
//       ],
//       ),
//     );
//   }
// }
// List fruits=['Apple','kiwi','banana','Pineapple','Fig','Guava'];
// List targets=['kiwi','Apple','banana','Fig','Pineapple','Guava'];
// List images=[
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2W4FbzyAF29m2YIkJAJGGwmr9FBjsLKGfNw&s',
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAs3XieMRULV8Yh2QuEL1eCeXFriJ-yNhwOQ&s'
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThvDg7lqbUJ015yz_cWA4eImF_TRcLwjOHaQ&s'
//   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_Vcgz49fNwxIUFa6hfsUA7M_TUiLWVjA4G4u-ioOBlwLdagrsYZK14I7ojvMn5iZ06U&usqp=CAU',
//   'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour.jpg/1200px-Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour.jpg',
//   'https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834',
// ];
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List fruits = ['Apple', 'kiwi', 'banana', 'Pineapple', 'Fig', 'Guava'];
  List targets = ['Pineapple','Fig','Guava','banana','kiwi', 'Apple',    ];
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2W4FbzyAF29m2YIkJAJGGwmr9FBjsLKGfNw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAs3XieMRULV8Yh2QuEL1eCeXFriJ-yNhwOQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThvDg7lqbUJ015yz_cWA4eImF_TRcLwjOHaQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_Vcgz49fNwxIUFa6hfsUA7M_TUiLWVjA4G4u-ioOBlwLdagrsYZK14I7ojvMn5iZ06U&usqp=CAU',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour.jpg/1200px-Kiwi_%28Actinidia_chinensis%29_1_Luc_Viatour.jpg',
    'https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fruit Game'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              fruits.length,
                  (index) => Draggable(
                data: fruits[index],
                child: Text(
                  fruits[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                feedback: Material(
                  color: Colors.transparent,
                  child: Text(
                    fruits[index],
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              targets.length,
                  (index) => DragTarget(
                onAcceptWithDetails: (details) {
                  setState(() {
                    if (details.data == targets[index]) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('Object Matched Successfully!'),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text('Selected an Invalid Option!'),
                      ));
                    }
                  });
                },
                builder: (context, candidateData, rejectedData) => SizedBox(
                  height: 120,
                  width: 150,
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
