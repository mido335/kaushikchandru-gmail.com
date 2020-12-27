import 'package:flutter/material.dart';
import 'LoginPage.dart';
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signUpPage(),
    );
  }
}
class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/logo.png')
                  )
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("التسجيل", style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sfpro'
                  ),),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "الاسم",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "رقم الهاتف ",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "البريد الالكترونى",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "كلمة المرور",
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        gradient: LinearGradient(
                            colors: [Color(0xfff3953b), Color(0xffe57509)],
                            stops: [0,1],
                            begin: Alignment.topCenter
                        )
                    ),
                    child: Center(
                      child: Text("التسجيل", style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'sfpro'
                      ),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("بالضغط على التسجيل ستوافق على الشروط و الاحكام", style: TextStyle(
                      fontSize: 15
                  ),textAlign: TextAlign.center,)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("لديك حساب بالفعل ؟", style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'sfpro'
                ),),
                InkWell(
                  onTap: openLoginPage,
                  child: Text(" تسجيل الدخول", style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  ),),
                )
              ],
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
  void openLoginPage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }
}

