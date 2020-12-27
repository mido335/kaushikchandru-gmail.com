
import 'package:flutter/material.dart';
import 'package:omar_alaa/StyleScheme.dart';

class elmo3aser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('كتب المعاصر'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryWidget("man", "ثانوى", true),
                categoryWidget("child", "اعدادى", false),
                categoryWidget("girl", "ابتدائى", false),
                categoryWidget("girl", "لغات", false),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    bookWidget("cloth1", "انجليزى", "15"),
                    bookWidget("cloth2", "بحته الثانى الثانوى", "15"),
                    bookWidget("cloth3", "تطبيقيه الثانى الثانوى", "15"),
                    bookWidget("cloth4", "ادبى عام ثانى ثانوى", "15"),
                    bookWidget("cloth5", "تفاض و تكامل ثالث ثانوى", "15"),
                    bookWidget("cloth5", "جبر و هندسه ثالث ثانوى", "15"),
                    bookWidget("cloth5", "ديناميكا ثالث ثانوى", "15"),
                    bookWidget("cloth5", "استاتيكا ثالث ثانوى", "15"),
                    bookWidget("cloth5", "تفاض و تكامل ثالث ثانوى", "15"),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Container bookWidget(String img, String name, String price)
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: ,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/images/$img.png")
                      )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: headingStyle,),
                    Text("\$price",
                      style: headingStyle.copyWith(color: Colors.grey),),
                  ],
                ),
                Text("\$45", style: headingStyle,),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          gradient: gradientStyle,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text("-", style: headingStyle.copyWith(
                            color: Colors.white
                        ),),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Text("1", style: headingStyle.copyWith(
                            fontSize: 25
                        )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          gradient: gradientStyle,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text("+", style: headingStyle.copyWith(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  }
  Column categoryWidget(String img, String name, bool isActive)
  {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: (isActive) ? null : Colors.grey.withOpacity(0.3),
            gradient: (isActive) ? gradientStyle : null,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/$img.png'),
                      fit: BoxFit.contain
                  )
              ),
            ),
          ),
        ),
        Text(name, style: headingStyle)
      ],
    );
  }

