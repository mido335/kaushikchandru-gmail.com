import 'package:flutter/material.dart';
import 'package:omar_alaa/elmo3aser.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 170,
              color: Colors.orange,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Image(image: AssetImage("images/logo.png"),height: 90,width: 90,),
                  SizedBox(height: 10,),
                  Text('مرحبا بك')
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text("المعاصر"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => elmo3aser()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text("الامتحان"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => elmo3aser()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text("سلاح التلميذ"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text("الاضواء"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text("قطر الندى"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text("الشامل"),
              onTap: (){},
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value)=>{},
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes),
              title: Text('Track Order')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('My Order')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Cart')
          )
        ],
      ),
    );
  }
}
