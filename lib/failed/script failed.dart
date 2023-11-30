// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';

// class NavbarPage extends StatefulWidget {
//   const NavbarPage({super.key});

//   @override
//   State<NavbarPage> createState() => _NavbarPageState();
// }

// class _NavbarPageState extends State<NavbarPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Drawer(
//           child: ListView(
//             children: [
//               // const SizedBox(height: 40,),
//               UserAccountsDrawerHeader(
//                 accountName: const Text("Tosa Ramadhan"),
//                 accountEmail: const Text("tosa@gmail.com"),
//                 currentAccountPicture: CircleAvatar(
//                   child: ClipOval(child: Image.asset("assets/images/luffy1.jpeg"),
//                   ),
//                 ),
//                 decoration: const BoxDecoration(
//                   color: Colors.red,
//                   image: DecorationImage(image: AssetImage("assets/images/luffy.jpeg"), fit: BoxFit.cover
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20,),
//               const Center(child: Text(
//                 "SOS ATTENDANCE",
//                 )),
//               const SizedBox(height: 30,),
//                 const ListTile(
//                   leading: Icon(Icons.dashboard),
//                   title: Text("Dashboard"),
//                 ),
//                 const ListTile(
//                   leading: Icon(Icons.work),
//                   title: Text("Absensi"),
//                 ),
//                 const ListTile(
//                   leading: Icon(Icons.work_off),
//                   title: Text("Pengajuan Izin"),
//                 ),
//                 const ListTile(
//                   leading: Icon(Icons.logout),
//                   title: Text("Logout"),
//                 ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }


// tab home
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.all(10),
//         width: double.infinity,
//         height: double.infinity,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 40,
//               width: double.infinity,
//               child: ListView.builder(
//                 physics: BouncingScrollPhysics(),
//                 itemCount: items.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       current = index;
//                     });
//                   },
//                   child: AnimatedContainer(
//                     duration: Duration(milliseconds: 300),
//                     margin: EdgeInsets.all(5),
//                     width: 120,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       color: current == index
//                       ? Colors.white
//                       : Colors.grey[300],
//                     borderRadius: current == index
//                       ? BorderRadius.circular(15)
//                       : BorderRadius.circular(10),
//                     border: current == index
//                       ? Border.all(
//                        color: Colors.blueAccent, width: 2)
//                        : null),
                    
//                       child: Center(
//                         child: Text(
//                           items[index],
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: current == index
//                                 ? Colors.black
//                                 : Colors.grey
//                           ),
//                         ),
//                       ),
                    
//                   ),
//                 );
//               }),
//             ),
//             // input text body/main body
//             SingleChildScrollView(
//               child: Container(
//                 margin: EdgeInsets.only(top: 10),
//                 width: double.infinity,
//                 height: 400,
//                 color: Colors.grey[300],
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: 
//                   [
//                     Text(myabsenmasuk[current]),
//                     // Text(myabsenkeluar[current]),
//                     // Text(pengajuancuti[current]),
//                     // Text(pengajuanizin[current]),
//                     // Text(pengajuansakit[current]),
//                   ]
//                   // ]
//                   // [
//                   //   Text(listtext[current]),
//                   // ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }






// LOGIN FAILED
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   late Color myColor;
//   late Size mediaSize;
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   bool rememberUser = false;

//   // login user
//   void signUserIn() async {
//     // show dialog loading
//     showDialog(
//       context: context,
//       builder: (context) {
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//       });

//     // try signin
//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: emailController.text,
//       password: passwordController.text,
//     );
//     // pop up loading
//     Navigator.pop(context);
//     } on FirebaseAuthException catch (e) {
//       // pop up loading
//     Navigator.pop(context);
//       // email dialog
//       if (e.code == "user not found") {
//         // show error to  user
//         wrongEmailMessage();
//       }
//       // password dialog
//       else if (e.code == "wrong password") {
//         // show error to  user
//         wrongPasswordMessage();
//       }

//     }

//     // pop up loading
//     Navigator.pop(context);
//   }

//   // email message popup
//   void wrongEmailMessage() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Incorrect Email"),
//         );
//       }
//       );
//   }
//   // email message popup
//   void wrongPasswordMessage() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Incorrect Password"),
//         );
//       }
//       );
//   }

//   @override
//   Widget build(BuildContext context) {
//     myColor = Theme.of(context).primaryColor;
//     mediaSize = MediaQuery.of(context).size;
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: const AssetImage("assets/images/bg.png"),
//           fit: BoxFit.cover,
//           colorFilter: 
//             ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop),
//         )
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Stack(
//           children: [
//             Positioned(top: 10, child: _buildTop()),
//             Positioned(bottom: 0, child: _buildBottom()),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget _buildTop() {
//     return SizedBox(
//       width: mediaSize.width,
//       child: const Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Icon(
//           //   Icons.location_on_sharp,
//           //   size: 200,
//           //   color: Colors.red,
//           // ),
//           Image(image: AssetImage("assets/images/logoptsos.png"),
//           height: 170,
//           ),
//           // Text(
//           //   "GO SOLUSI",
//           //     style: TextStyle(
//           //       fontSize: 30,
//           //       fontWeight: FontWeight.bold,
//           //       color: Colors.grey,
//           //       letterSpacing: 2,
//           //     ),
//           //   )
//         ],
//       ),
//     );
//   }

//   Widget _buildBottom() {
//     return SizedBox(
//       width: mediaSize.width,
//       child: Card(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30),
//             topRight: Radius.circular(30)
//           )
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: _buildForm(),
//         ),
//       ),
//     );
//   }

//   Widget _buildForm() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Wellcome",
//             style: TextStyle(
//               color: Colors.blue,
//               fontSize: 32,
//               fontWeight: FontWeight.w500
//             ),
//           ),
//         _buildGreyText("Please Login With Your Attedance"),
//         const SizedBox(height: 60,),
//         _buildGreyText("Email Adress"),
//         _buildInputTextField(emailController),
//         const SizedBox(height: 40,),
//         _buildGreyText("Password"),
//         _buildInputTextField(passwordController, isPassword:  true),
//         const SizedBox(height: 20,),
//         _buildRememberForgot(),
//         const SizedBox(height: 20,),
//         _buildLoginButton(),
//         const SizedBox(height: 20,),
//         // _buildOtherLogin(),
//       ],
//     );
//   }

//   Widget _buildGreyText(String text) {
//     return Text(
//       text, 
//       style: const TextStyle(
//         color: Colors.black
//       ),
//     );
//   }

//   Widget _buildInputTextField(TextEditingController controller,
//   {isPassword = false}) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         suffixIcon: isPassword ?
//         const Icon(Icons.remove_red_eye) : const Icon(Icons.more_horiz),
//       ),
//       obscureText: isPassword,
//     );
//   }

//   Widget _buildRememberForgot() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             Checkbox(value: rememberUser, onChanged: (value) {
//               setState(() {
//                 rememberUser = value!;
//               });
//             }),
//             _buildGreyText("Remember Me")
//           ],
//         ),
//         TextButton(onPressed: () {}, child: _buildGreyText("Forgot Password ?"))
//       ],
//     );
//   }

//   Widget _buildLoginButton() {
//     return ElevatedButton(
//       onPressed: signUserIn,
//     //   () {
//     //   Navigator.of(context).pushReplacement(
//     //     MaterialPageRoute(builder: (context) {
//     //       return AuthPage();
//     //     })
//     //   );
//     //   // debugPrint("Email : ${emailController.text}");
//     //   // debugPrint("Password : ${passwordController.text}");
//     // },
//     style: ElevatedButton.styleFrom(
//       shape: const StadiumBorder(),
//       elevation: 20,
//       shadowColor: myColor,
//       minimumSize: const Size.fromHeight(60)
//     ),
//     child: const Text("LOGIN"));
//   }

//   // Widget _buildOtherLogin() {
//   //   return Center(
//   //     child: Column(
//   //       children: [
//   //         _buildGreyText("Or Login With"),
//   //         const SizedBox(height: 10,),
//   //         Row(
//   //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //           children: [
//   //             Tab(icon: Image.asset("assets/images/fbicon.jpeg")),
//   //             Tab(icon: Image.asset("assets/images/igicon.jpeg")),
//   //             Tab(icon: Image.asset("assets/images/googleicon.png")),
//   //           ],
//   //         )
//   //       ],
//   //     ),
//   //   );
//   // }

// }







// // // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers


// // import 'package:attedance/pages/home_page.dart';
// // import 'package:flutter/material.dart';

// // class LoginPage extends StatefulWidget {
// //   const LoginPage({super.key});

// //   @override
// //   State<LoginPage> createState() => _LoginPageState();
// // }

// // class _LoginPageState extends State<LoginPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Halaman Login"),
// //       ),
// //       body: Center(
// //       child: Container(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               SizedBox(
// //                 width: 400,
// //                 height: 100,
// //                 child: const TextField(
// //                     decoration: InputDecoration(
// //                       prefixIcon: Icon(Icons.person),
// //                       prefixText: "Email : ",
// //                       border: OutlineInputBorder(),
// //                     ),
// //                   ),
// //               ),
              
// //               SizedBox(
// //                 width: 400,
// //                 height: 100,
// //                 child: const TextField(
// //                   obscureText: true,
// //                   decoration: InputDecoration(
// //                     prefixIcon: Icon(Icons.password),
// //                     prefixText: "Password : ",
// //                     border: OutlineInputBorder(),
// //                   ),
// //                 ),
// //               ),
              
// //               SizedBox(
// //                 width: 100,
// //                 height: 40,
// //                 child: ElevatedButton(
// //                   onPressed: () {
// //                     Navigator.of(context).push(
// //                       MaterialPageRoute(builder: (context) {
// //                         return HomePage();
// //                       })
// //                     );
// //                   },
// //                   child: Text("LOGIN")),
// //               )
// //             ],
// //           ),
// //         ),
// //       )
// //     );
// //   }
// // 