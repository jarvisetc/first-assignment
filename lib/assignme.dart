import 'package:flutter/material.dart';

void main(){
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget{
  const MyFlutterApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "My Flutter App",
      debugShowCheckedModeBanner: false,
      // home: Onboarding()
      );
  }
}

/// How to create a stateful widget
/// 
// class MyStatefull extends StatefulWidget {
//   const MyStatefull({super.key});
//   @override
//   State createState()=> StateForMyStatefull();
//   }

// class StateForMyStatefull extends State<MyStatefull> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Icon(Icons.android),
//           Text(
//             "Hello World",
//             style: TextStyle(color: Colors.green, fontSize: 20),
//             )
//         ],
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.amber,
//         title: const Text(
//           "Home",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//           Container(
//             height: 200,
//             decoration: BoxDecoration(color: Colors.amber),
//           ),
//           Image.network("https://cdn.photographylife.com/wp-content/uploads/2014/09/Nikon-D750-Image-Samples-2.jpg")
//         ),
//       ),
//           decoration: const BoxDecoration(
//             color: Colors.amber,
           
//             gradient: LinearGradient(
//               colors: [
//                 Colors.black,
//                 Colors.amber,
//                 Colors.redAccent,
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomLeft,
//             ),
//             shape: BoxShape.circle,
//           ),
//           child: const Center(
//             child: Image(
//               image: NetworkImage(
//                 "https://cdn.photographylife.com/wp-content/uploads/2014/09/Nikon-D750-Image-Samples-2.jpg"))),
//             ),
//           );
        
      
//       appBar: AppBar(
//         backgroundColor: Colors.amber,
//         title: const Text(
//           "Home",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           )
//         ),
//         centerTitle: true,
//         leading: const Icon(
//           Icons.menu,
//           size: 28,
//           color: Colors.white,
//         ),
//         actions: [
//           Icon(
//             Icons.notifications,
//             color: Colors.white,
//             size: 40,
//           ),
//           Container(
//             padding: EdgeInsets.all(9),
//             margin: EdgeInsets.all(9),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white,
//             ),
//             child: Icon(Icons.save),
//           )
//         ],
      
//     );
//   }

  



// }



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}



class ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
TextEditingController countryController = TextEditingController();

String? name;
String? age;
String? country;


  @override  
Widget build(BuildContext context) {
  return Scaffold(  
    body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

         SizedBox(height: 50,),
        Container(
          
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.amber,
        borderRadius: BorderRadius.circular(10)),
        child: Row(children: [  const CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage("assets/images/CRYPTO.jpeg"),
          ),
          const SizedBox(
            width: 15,
          ),   Column(
          
            children: [
              Text(
                name ?? "Ademola Ibukun" ,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                  "Age: ${age ?? 12}",
                  style: const TextStyle(fontSize: 15),
                  ),
                  Container(
                    margin: const EdgeInsets.all(6),
                    width: 5,
                    height: 12,
                    color: Colors.white,
                  ),
                   Text(
                    "Country: ${country ?? "Ghana"}",
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Text("Skills",
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17 )),
              const SizedBox(
                width: 150,
                child: const Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Dart"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Flutter"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Github"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text("Firebase"),
                        ),
            ])
                    ),
                  ],
                ),


          
          
          
          ],),),
        
                 Container(
          padding: const EdgeInsets.all(20),
          child: Column(
          children: [
           const TextField(
              decoration: InputDecoration(
                labelText: "Name",
                 hintText: "Enter Your Name",
                  border: OutlineInputBorder(),
                  ),
            ),

           const TextField(
              decoration: InputDecoration(
              labelText: "Age",
                 hintText: "Enter your Age",
                  border: OutlineInputBorder(),
                  ),
            ),
           const SizedBox(height: 20,),
            TextField(
            controller: countryController,
              decoration: const InputDecoration(
              labelText: "Country",
                 hintText: "Enter your Country",
                  border: OutlineInputBorder(),
            ),
            ),
                const SizedBox(height: 20,
                 ),     
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,
              fixedSize: const Size(300,50)),
              onPressed: (){
              setState((){
                name=nameController.text;
                age = ageController.text;
                country = countryController.text;
              });
              },
               child: const Text("Submit"))
            ],
            ),
            ),

              ])
            ),
          );

}
  }