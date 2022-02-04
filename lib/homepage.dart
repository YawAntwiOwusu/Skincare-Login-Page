import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1f2b3e),
        toolbarHeight: 1,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/skincarePicture2.jpg",
            height: MediaQuery.of(context).size.height * 0.55,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/skincarepicture3.png",
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "Share your skincare routine and find trusted advice from your firends",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xff074D95), fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 45,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  width: 2, color: Color(0xff074D95))),
                          onPressed: () {},
                          child: Text("Login with phone number",
                              style: TextStyle(color: Color(0xff074D95)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff074D95)),
                          onPressed: () {},
                          child: Text(
                            "Log in with phone Facebook",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have an account?"),
                        TextButton(
                          onPressed: () {},
                          child: Text("Log in",
                              style: TextStyle(color: Color(0xff074D95))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
