import 'package:flutter/material.dart';
import 'package:food_app/core/route/routes.dart';
import 'package:food_app/ui/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.routes,
      initialRoute: Routes.productOverviewScreen,
    );
  }
}
// https://www.youtube.com/watch?v=hJmX2KcMtcs&list=PLQrn8asEsczrgB06s8apKMXfKpqWRhF49&index=4