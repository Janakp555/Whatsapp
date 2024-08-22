import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for(int i=1;i<8;i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context,"ChatPage");
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/profile$i.png",
                          height: 65,
                          width: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Flutter Code ",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Hey!!, I am SMIT",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("11:00",style: TextStyle(fontSize: 14,color: Color(0xff0fce5e),fontWeight: FontWeight.w500),),
                          Container(
                            alignment: AlignmentDirectional.center,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Color(0xff0fce5e),
                              borderRadius: BorderRadius.circular(18),
                              ),
                              child: Text("2",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
