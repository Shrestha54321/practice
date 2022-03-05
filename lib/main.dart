import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(cvv());

}

class cvv extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY CV APP",
      theme:ThemeData(
        primarySwatch:Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle:true,
          title: Text("MY CV APP"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
           Card(
             child: Padding(
               padding:  EdgeInsets.all(10.0),
               child: Column(
                 children:<Widget> [
                   CircleAvatar(
                     radius: 40.0,
                     backgroundImage: AssetImage("assets/abc.jpg"),
                   ),
                   SizedBox(
                     height: 10.0,
                   ),
                   Text("Sid Shrestha",
                   style: TextStyle(
                     fontSize: 30.0,
                     fontWeight: FontWeight.w600,
                        ),
                    ),
                   Text("Developer"),
                   Text("Passionate, motivated, team-oriented and ready to explore the field of IT industry. I believe in giving my 100% into whatever task I’m doing. To be able to work for a company that will assist me in developing, improving and obtaining the necessary skills ."),
                   
        
                 ],
               ),
             ),
           ),
        
        
           Padding(
             padding: const EdgeInsets.only(
               left:10.0,
               top:10.0,
               ),
             child: Text("Social Links",
             style: TextStyle(
               fontSize: 20.0,
             ),
             ),
           ),
        
           Card(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
               IconButton(
                 onPressed: () {
                   launch("https:facebook.com");
                 },
               color: Colors.blue,
               icon:Icon(FontAwesomeIcons.facebook),
               ),
           
                IconButton(
                 onPressed: () {
                   launch("https:instagram.com");
                 },
               color: Colors.red,
               icon:Icon(FontAwesomeIcons.instagram),
               ),
           
                IconButton(
                 onPressed: () {
                   launch("https:linkedin.com");
                 },
               color: Colors.blueGrey,
               icon:Icon(FontAwesomeIcons.linkedin),          
                ),
             ],
             ),
           ),
            
           Padding(
             padding: const EdgeInsets.only(
               left:10.0,
               top:10.0,
               ),
             child: Text("Skills",
             style: TextStyle(
               fontSize: 20.0,
             ),
             ),
           ),
           
            
           Padding(
             padding: EdgeInsets.all(8.0),
             child: Card(
              
               child: ListTile(
                 leading: CircleAvatar(
                   radius: 30.0,
                   backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/640px-Python-logo-notext.svg.png"
                   ),
                 ),
                 title:Text("Python"),
                 subtitle: Text("Machine Learning"),
             
               ),
             ),
           ),
        
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Card(
               child: ListTile(
                leading: CircleAvatar(
                   radius: 30.0,
                   backgroundImage: NetworkImage(
                     "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj"
                   ),
                 ),
                 title:Text("Flutter"),
                 subtitle: Text("Dart, ui design"),
           
               ),
           ),
            ),

           Padding(
             padding:  EdgeInsets.all(8.0),
             child: Card(
               child: ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                "https://onlinekhawar.com/wp-content/uploads/2021/01/Graphic-_Design-1.jpg"
              ),
            ),
                 title:Text("Graphics Design"),
                 subtitle: Text("Photoshop , Illustrator"),
             
               ),
             ),
           ),
      
        

            ],
          ),
        ),
      ),
    );
  }
}