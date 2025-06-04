import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage('https://scontent-for2-1.xx.fbcdn.net/v/t39.30808-6/448474001_1102716254548247_2613997786866384047_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=YvLTDwKG1wkQ7kNvwEvBaA5&_nc_oc=AdkoNwxKw_rJIw8Qvk77dPC2IOdwQxfiZA-N4ajzSoiAwoV9XAydg0zXDUmyeYwBX-o&_nc_zt=23&_nc_ht=scontent-for2-1.xx&_nc_gid=PztHFE7ms5xPgs6uMtbOBQ&oh=00_AfLQbkxD_tkFAH00qIW785fRqo0eR6A6bIzfVIgFVTgQSg&oe=68460BA3'),
    radius: 150,
  );
  final nome = const Text(
    'cristiano ronaldo',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
  final botaoTelefone = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.phone),
    onPressed: (){
      launchUrl(Uri(scheme: 'tel', path: '9999-9999'));

    },
  );
  final botaoEmail = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.mail),
    onPressed: (){
      launchUrl(Uri(scheme: 'mailto', path: 'carlosaugusto11907@gmail.com'));
    },
  );
  final botaoSMS = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.sms),
    onPressed: (){
      launchUrl(Uri(scheme: 'sms', path: '9999-9999'));
      
    },
  );

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              botaoTelefone, botaoEmail, botaoSMS
          ],
          )
        ],
      ),
    );
}