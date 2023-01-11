import 'package:catalouge_app/screens/login_page.dart';
import 'package:catalouge_app/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('List App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).primaryColor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('assets/images/shopcart.png',
                      height: 200,
                      width: 350,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Column(
                    children: [
                      Text('Welcome $name',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter Username',
                            labelText: 'Username',
                          ),
                          onChanged: (value){
                            name = value;
                            setState(() {
                            });
                          }
                          ,
                        ),

                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter Password',
                            labelText: 'Password',
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  
                  Material(
                    borderRadius: BorderRadius.circular(
                        changeButton? 50:10),
                    color: Colors.cyanAccent,
                    child: InkWell(
                      onTap: () async{
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(const Duration(seconds: 1));
                        await Navigator.pushNamed(context, MyRoutes.loginRoute);
                        setState(() {
                          changeButton = false;
                        });
                        },
                      splashColor: Colors.white,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 80: 150,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          // shape: changeButton
                          //   ?BoxShape.circle
                          //   :BoxShape.rectangle,
                        ),

                        child: Column(
                          children: [Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                            ): const Text('Login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),),
                          )],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

