import 'package:xtramiler/modules/imports.dart';

class Login extends StatefulWidget {
  static final String id = "login_page";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.redAccent[700].withOpacity(0.5), BlendMode.dstIn),
              image: AssetImage('images/logo1.jpg'),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your username'),
                ),
                HomeButton(
                  label: "Login",
                ),
                SizedBox(
                  height: 10.0,
                ),
                HomeButton(
                  label: "Register",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
