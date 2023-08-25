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
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[100],
        elevation: 0,
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu, color: Colors.black45,)),
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[100],
                ),

                child: Padding(
                  padding: EdgeInsets.all(height*0.025),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Find Your',
                      style: TextStyle(
                        fontSize: height*0.043,
                      ),),
                      Text('Inspiration',
                        style: TextStyle(
                          fontSize: height*0.056,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height*0.035),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(height*0.008)
                          ),
                          child: TextField(
                            cursorColor: Colors.black87,
                            cursorHeight: height*0.025,
                            style: TextStyle(
                              fontSize: height*0.019
                            ),
                            decoration: InputDecoration(

                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black87,
                                ),
                              hintText: 'Search what you\'re looking for',
                              hintStyle: TextStyle(color: Colors.black),

                              enabledBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(height*0.008),
                                borderSide:BorderSide(
                                  color: Colors.black87,
                                )
                              ),
                              focusedBorder:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(height*0.008),
                                  borderSide:BorderSide(
                                    color: Colors.black87,
                                  )
                              )
                            ),

                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(height*0.025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Promo Today',
                      style: TextStyle(
                        fontSize: height*0.025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.025),
                      child: Container(
                        height: height*0.3,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            PromoCard('assets/1.jpg'),
                            PromoCard('assets/2.jpg'),
                            PromoCard('assets/3.jpg'),
                            PromoCard('assets/5.jpg'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(height*0.021),
                            child: Text('Prime Inspo',
                            style: TextStyle(
                              fontSize: height*0.02,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                                stops: [0.2,0.9],
                                colors: [
                                  Colors.black.withOpacity(0.9),
                                  Colors.black.withOpacity(0.1)
                                ]
                            )
                        ),
                      ),
                      height: height*0.16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.teal[300],
                        image: DecorationImage(image: AssetImage('assets/4.jpg'),fit: BoxFit.cover),


                      ),
                    )
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
  Widget PromoCard(image){
    return AspectRatio(

        aspectRatio: 2.5/3,

      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          // color: Colors.teal[400],
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.1)
                ],
              begin: Alignment.bottomRight,
              stops: [0.1,0.9]
            ),
          ),
        ),
      ),
    );
  }
}



