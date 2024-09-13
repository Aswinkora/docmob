
import 'package:docmob/Screen/tabs.dart';
import 'package:docmob/components/textform.dart';
import 'package:docmob/const/colors.dart';
import 'package:flutter/material.dart';

class Dlogin extends StatefulWidget {
  const Dlogin({super.key});

  @override
  State<Dlogin> createState() => _DloginState();
}

class _DloginState extends State<Dlogin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController usercntrl = TextEditingController();
    TextEditingController passcontrl = TextEditingController();
    return Scaffold(backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     // image: CachedNetworkImageProvider('images/doc1.png'),
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: const Color.fromARGB(41, 96, 125, 139),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: FractionallySizedBox(
                          widthFactor: 0.7,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Doctors Login',
                                style: TextStyle(
                                  color: primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ),
                              ),
                              const SizedBox(height: 60),
                              TextFormField(
                                // icons: Icons.person_2,
                                // key: 'Username',
                                controller: usercntrl,
                              ),
                              const SizedBox(height: 30),
                              TextFormField(
                                // icons: Icons.lock_outline,
                                // label: 'Password',
                                controller: passcontrl,
                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13))),
                                fixedSize:
                                    WidgetStatePropertyAll(Size(1000, 50)),
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xFF293991))),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Dashboard()));
                            },
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Forgot Your Password?',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  TextButton(
                                    onPressed: reset,
                                    child: Text(
                                      'Reset',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // decoration: BoxDecoration(/
                //   image: DecorationImage(
                //     image: AssetImage('images/doc1.png'),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(color: Colors.white,
                          height: 330,
                          width: 330,
                          child: Image.asset("images/midass.png"),
                        ),
                        Text(
                          'Doctors Login',
                          style: TextStyle(
                            color: primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 40),
                        Textform(
                          Colors: Colors.white,
                          icons: Icons.person_2,
                          label: 'Username',
                          controller: usercntrl, colors: const Color.fromARGB(122, 0, 0, 0),
                        ),
                        const SizedBox(height: 20),
                        Textform(
                          colors: const Color.fromARGB(122, 0, 0, 0),
                          Colors: Colors.white,
                          icons: Icons.lock_outline,
                          label: 'Password',
                          controller: passcontrl,
                        ),
                          const SizedBox(height: 20),

                         Padding(
                           padding: const EdgeInsets.only(left: 200),
                           child: Text("Reset password",style: TextStyle(color: second),),
                         ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13))),
                                fixedSize:
                                    WidgetStatePropertyAll(Size(1000, 50)),
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xFF293991))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tabs(user: '',)));
                            },
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }

  void reset() {}
}

void action() {}
