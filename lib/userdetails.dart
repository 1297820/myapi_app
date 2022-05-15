import 'package:flutter/material.dart';
import 'package:myapi_app/api_request.dart';

class UserDetails extends StatelessWidget {
  UserDetails({Key? key, required this.user, required this.index}) : super(key: key);

  List<dynamic> user;
  int index;
 // List locations;
  //Future<dynamic>? info;

  // @override
  // void initState() {
  //   super.initState();
  //   info = getdata();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
            children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomLeft,
                            colors: [Colors.pink, Colors.black]),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      //user[index]['name'],
                      'name',
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                     // user[index]['city'],
                      'city',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 30),
                            CircleAvatar(
                                backgroundColor: Colors.pink[700],
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        CircleAvatar(
                          radius: 85,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            CircleAvatar(
                                backgroundColor: Colors.pink[700],
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.more_horiz,
                  color: Colors.pink[700],
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'About User',
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.more_horiz,
                  size: 40,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Age',
                      style: TextStyle(fontSize: 20,
                      color: Colors.black38
                      ),
                    ),
                    Text(
                      'age',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.pink[700],
                ),
                Column(
                  children: [
                    Text(
                      'Age',
                      style: TextStyle(fontSize: 20,
                      color: Colors.black38),
                    ),
                    Text(
                      'age',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.mail_outline_outlined, color: Colors.pink[600],),
                  SizedBox(width: 10,),
                  Text('Email', style: TextStyle(
                    fontSize: 20
                  ),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.cake, color: Colors.pink[600],),
                  SizedBox(width: 10,),
                  Text('dob',
                  style: TextStyle(
                    fontSize: 20
                  ),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.person_outline, color: Colors.pink[600],),
                  SizedBox(width: 10,),
                  Text('gender',
                  style: TextStyle(
                    fontSize: 20
                  ),)
                ],
              ),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {
              
            },
            child: Text('Smile')
            )
          ]),
    );
  }
}
