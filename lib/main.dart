import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

// ======================= Praktik Text ===================================

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Praktikum Minggu 3 Diffgi")),
//       body: Text(
//         'Ini Text by Diffgi',
//         style: TextStyle(
//             color: Colors.blue,
//             backgroundColor: Colors.pink,
//             fontSize: 20.0,
//             fontStyle: FontStyle.italic,
//             fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// ======================= Praktik Icon ===================================

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Praktikum Minggu 3 Diffgi")),
//         body: Container(
//           padding: EdgeInsets.all(16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Icon(
//                     Icons.favorite,
//                     color: Colors.pink,
//                     size: 24.0,
//                   ),
//                   Text('Favorite')
//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   Icon(
//                     Icons.audiotrack,
//                     color: Colors.green,
//                     size: 30.0,
//                   ),
//                   Text('Music')
//                 ],
//               ),
//               Column(
//                 children: <Widget>[
//                   Icon(
//                     Icons.beach_access,
//                     color: Colors.blue,
//                     size: 36.0,
//                   ),
//                   Text('Weather')
//                 ],
//               ),
//             ],
//           ),
//         ));
//   }
// }

// ======================= Container ===================================

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Praktikum Minggu 3 Diffgi")),
//         body: Container(
//             padding: EdgeInsets.all(32.0),
//             margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20.0),
//                 color: Color.fromARGB(255, 6, 184, 255)),
// // color: Colors.purple,
//             child: Text(
//               'Diffgi',
//               style: TextStyle(color: Colors.white, fontSize: 20.0),
//             )));
//   }
// }

// ======================= Praktik SizedBox ===================================

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Praktikum Minggu 3 Diffgi")),
//         body: Column(
//           children: <Widget>[
//             Text(
//               "A",
//               style: TextStyle(fontSize: 30.0),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               "B",
//               style: TextStyle(fontSize: 30.0),
//             )
//           ],
//         ));
//   }
// }

// ======================= Praktik Button ===================================

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Praktikum Minggu 3 Diffgi")),
//         body: Column(
//           children: <Widget>[
//             ElevatedButton(
//               style: ButtonStyle(
//                   backgroundColor:
//                       MaterialStateProperty.all<Color>(Colors.black45)),
//               child: Text("Raised Button"),
//               onPressed: () {},
//             ),
//             MaterialButton(
//               color: Colors.lime,
//               child: Text("Material Button"),
//               onPressed: () {},
//             ),
//             TextButton(
//                 style: ButtonStyle(
//                   foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
//                   backgroundColor:
//                       MaterialStateProperty.all<Color>(Colors.amber),
//                   overlayColor: MaterialStateProperty.resolveWith<Color?>(
//                     (Set<MaterialState> states) {
//                       if (states.contains(MaterialState.hovered))
//                         return Colors.blue.withOpacity(0.04);
//                       if (states.contains(MaterialState.focused) ||
//                           states.contains(MaterialState.pressed))
//                         return Colors.blue.withOpacity(0.12);
//                       return null; // Defer to the widget's default.
//                     },
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: Text('TextButton'))
//           ],
//         ));
//   }
// }

// ======================= Praktik Text From Field ===================================

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Praktikum Minggu 3 Diffgi")),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Form(
//             child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   decoration: InputDecoration(hintText: "Username"),
//                 ),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(hintText: "Password"),
//                 ),
//                 ElevatedButton(
//                   style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(Colors.green)),
//                   child: Text("Login"),
//                   onPressed: () {},
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }

// ======================= Praktik Alert Dialog ===================================

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Praktikum Minggu 3 Diffgi")),
      body: Container(
        color: Colors.red,
        child: MaterialButton(
          child: Text("Alert Dialog"),
          textColor: Colors.white70,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    "Hello",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  content: Text(
                    "Muhammad Diffgi Adivka",
                    textAlign: TextAlign.center,
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text("OK"),
                      onPressed: () {
                        // Fungsi yang akan dijalankan saat tombol OK ditekan
                        Navigator.of(context).pop(); // Close the dialog
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
