import 'package:flutter/material.dart';

class settingpage extends StatelessWidget {
  const settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(48),
                      child: Image.asset(
                        "assets/profile1.png",
                        height: 65,
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Pro Coder",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text("Hey there , I am using Whatsapp")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.key),
                ),
                title: Text("Account",style: TextStyle(fontSize: 17),),
                subtitle: Text("Privacy,security,change number",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.message),
                ),
                title: Text("Chart",style: TextStyle(fontSize: 17),),
                subtitle: Text("Theme,wallpapers,chat history",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.notifications),
                ),
                title: Text("Notifications",style: TextStyle(fontSize: 17),),
                subtitle: Text("Message,group & call tons",style: TextStyle(fontSize: 15),),
              ),
               ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text("Storage and Data",style: TextStyle(fontSize: 17),),
                subtitle: Text("Network usage , auto download",style: TextStyle(fontSize: 15),),
              ),
               ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.help),
                ),
                title: Text("Help",style: TextStyle(fontSize: 17),),
                subtitle: Text("Help center,contact us , privacy policy",style: TextStyle(fontSize: 15),),
              ),
               ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(Icons.people_alt),
                ),
                title: Text("Invite Friend",style: TextStyle(fontSize: 17),),
               
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [Text("from",style: TextStyle(fontSize: 16),),
                  Text("Meta",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
