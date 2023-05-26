// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import '../../model/apimodel.dart';

// class ClubScreen extends StatefulWidget {
//   const ClubScreen({super.key});

//   @override
//   State<ClubScreen> createState() => _ClubScreenState();
// }

// class _ClubScreenState extends State<ClubScreen> {
//   List<SampleApi> sampleApi = [];
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(Icons.arrow_back)),
//         backgroundColor: Colors.blueAccent,
//         title: const Text(
//           'Club',
//           style: TextStyle(fontSize: 20, color: Colors.white),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 FutureBuilder(
//                     future: getData(),
//                     builder: (context, snapshot) {
//                       if (snapshot.hasData) {
//                         return ListView.builder(
//                             itemCount: sampleApi.length,
//                             itemBuilder: (context, index) {
//                               return Container(
//                                 padding: const EdgeInsets.symmetric(
//                                     vertical: 10, horizontal: 10),
//                                 margin: const EdgeInsets.all(10),
//                                 height: 140,
//                                 width: double.maxFinite,
//                                 color: const Color.fromARGB(255, 129, 170, 243),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "Title : ${sampleApi[index].clubName}",
//                                       style: const TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     Text(
//                                       "Faculty : ${sampleApi[index].facultyCoordinator}",
//                                       style: const TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     Text(
//                                       "Details : ${sampleApi[index].details}",
//                                       maxLines: 1,
//                                       style: const TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     // Text(
//                                     //   "image : ${sampleApi[index].image}",
//                                     //   maxLines: 1,
//                                     //   style: TextStyle(
//                                     //     fontSize: 20,
//                                     //     fontWeight: FontWeight.bold,
//                                     //   ),
//                                     // ),
//                                   ],
//                                 ),
//                               );
//                             });
//                       }
//                       return const Center(child: CircularProgressIndicator());
//                     })
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Future<List<SampleApi>> getData() async {
//     final response = await http.get(Uri.parse(
//         "https://event-management-api-5rtow5.5sc6y6-3.usa-e2.cloudhub.io/getEvent"));
//     var data = jsonDecode(response.body.toString());

//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> index in data) {
//         sampleApi.add(SampleApi.fromJson(index));
//       }
//       return sampleApi;
//     } else {
//       return sampleApi;
//     }
//   }
// }
