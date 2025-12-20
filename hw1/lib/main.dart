import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTopButton("A", Colors.redAccent),
                    buildTopButton("B", Colors.orange),
                    buildTopButton("C", Colors.yellow.shade600),
                  ],
                ),

                SizedBox(height: 25),

            
                Text(
                  "Fancy Section",
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo),
                ),

                SizedBox(height: 15),

               
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildFancyBox("1"),
                          buildFancyBox("2"),
                          buildFancyBox("3"),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildFancyBox("4"),
                          buildFancyBox("5"),
                          buildFancyBox("6"),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

               
                Text(
                  "Info Cards",
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigo),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildInfoCard("23", "Active", Colors.green),
                    buildInfoCard("15", "Pending", Colors.orange),
                    buildInfoCard("7", "Completed", Colors.green.shade700),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  

  Widget buildTopButton(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget buildFancyBox(String number) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.purple.shade300],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget buildInfoCard(String number, String label, Color color) {
    return Container(
      width: 80,
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
                fontSize: 18, color: color, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}