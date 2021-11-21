import 'package:flutter/material.dart';
import 'package:flutter_first/util/drawer.dart';
import 'package:flutter_first/util/routes.dart';

class firstpage extends StatelessWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grasper"),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.asset(
                "assets/images/yoo1.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(
                height: 60.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.loginRoute);
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.deepPurple[200],
                  onPrimary: Colors.black,
                  fixedSize: const Size(180, 60),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
