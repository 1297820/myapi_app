import 'package:flutter/material.dart';
import 'dart:async';
import 'package:myapi_app/api_request.dart';
import 'package:myapi_app/userdetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<dynamic>? data;
  
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    data = getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[700],
        title: const Text(
          "Random User",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        leading: Icon(Icons.people),
      ),
      body: Container(
        child: Center(
            child: FutureBuilder<dynamic>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(
                color: Colors.pink[700],
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                dynamic users = snapshot.data;
                return ListView.builder(
                  itemCount: data == null ? 0 : users.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                UserDetails(
                                  user: users,
                                  index: i,   
                            )
                          )
                        );
                      },
                      child: Card(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(),
                              child: Image(
                                image: NetworkImage(
                                    users[i]['picture']['thumbnail']),
                                width: 100.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ListTile(
                                    leading: const Icon(Icons.person),
                                    title: Text(
                                      users[i]['name']['first'] +
                                          "   " +
                                          users[i]['name']['last'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35.0,
                                        fontFamily: 'Amatic',
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.phone_iphone),
                                    title: Text(users[i]['phone']),
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.person_pin),
                                    title: Text(("${users[i]['dob']['age']}")),
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.mail),
                                    title: Text(
                                      users[i]['email'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        fontFamily: 'Exo2',
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Text('Check your internet connection');
              }
            } else {
              return const Text('Check your internet connection');
            }
          },
        )),
      ),
    );
  }
}
