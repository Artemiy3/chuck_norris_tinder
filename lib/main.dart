import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/image.dart';
import 'package:flutter_app/joke_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'joke.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Chuck Norris Tinder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Joke> _joke;

  @override
  void initState() {
    super.initState();
    _joke = fetchJoke();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FutureBuilder<Joke>(
                  future: _joke,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ImageScreen(imageUrl: snapshot.data!.icon_url);
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FutureBuilder<Joke>(
                future: _joke,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    print(snapshot.data!.icon_url);
                    return Text(snapshot.data!.value);
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _joke = fetchJoke();
                    });
                  },
                  child: Text('Bad'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _joke = fetchJoke();
                    });
                  },
                  child: Text('Good'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





