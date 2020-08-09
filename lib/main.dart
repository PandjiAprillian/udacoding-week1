import 'package:coffein_signin/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainPage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0x010101),
        textTheme: GoogleFonts.gabrielaTextTheme().copyWith(
          headline4: GoogleFonts.gabriela(color: Colors.white),
          bodyText2: GoogleFonts.gabriela(color: Colors.white),
          caption: GoogleFonts.baloo(color: Colors.white),
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Color fontColor = const Color(0xffffb401);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Hero(
              tag: 'coffee',
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/coffee.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Caffein\n',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      TextSpan(
                        text: 'Get Your Coffe now',
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    children: [
                      Icon(
                        Icons.alternate_email,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'type your mail',
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(.5)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'type your password',
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(.5)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 300,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color(0xff320001),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have account? ',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      InkWell(
                        child: Text(
                          'Sign Up Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUp();
                          }));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
