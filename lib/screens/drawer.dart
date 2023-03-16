import 'package:flutter/material.dart';

import 'Member.dart';
import 'account_used.dart';

class customdrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo,
      child: ListView(
        padding: EdgeInsets.zero,
        children:
        <Widget> [UserAccountsDrawerHeader(

          margin: EdgeInsets.fromLTRB(0, 0, 0, 50),

          currentAccountPicture: CircleAvatar(

            backgroundColor: Colors.white,
            backgroundImage: AssetImage('image/logo.jpg'),
          ),
          accountName: Text('AIIA TEAM',
            style: TextStyle( fontFamily: 'ShantellSans',
                fontSize: 20),),
          accountEmail:Text(""),
          onDetailsPressed: (){
          },
          decoration: BoxDecoration(
            color: Colors.indigo[800],
            borderRadius:BorderRadius.only(
              bottomLeft:Radius.circular(40.0) ,
              bottomRight: Radius.circular(40.0),
            ),
            boxShadow:  [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5),
            ],
          ),
        ),
          ListTile(
            leading:
            Icon(Icons.group,
              color: Colors.white,
            ),
            title: Text('Members',
              style: TextStyle(color:Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Member();
                }),
              );
            },
          ),
          // Member
          ListTile(
            leading:
            Icon(Icons.receipt_long,
              color: Colors.white,
            ),
            title: Text('Accounts used',
              style: TextStyle(color:Colors.white),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AccountUsed();
                }),
              );

            },
          ),
          //account used
          ListTile(
            leading:
            Icon(Icons.link_rounded,
              color: Colors.white,
            ),
            title: Text('SNS',
              style: TextStyle(color:Colors.white),
            ),
            onTap: (){

            },
          ),
          //Homepage
        ],
      ),
    );
  }
}
