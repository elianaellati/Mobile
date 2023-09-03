import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:http/http.dart' as http;


void main() => runApp(const MaterialApp(
      home: Test(),
    ));

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bisan"),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const NavigatorDrawer(),
    );
  }
}
class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children:<Widget> [
          buildHeader(context),
          buildMenu(context),
        ],

      )
  );


  Widget buildHeader(BuildContext context) =>
      Container(
          color: Colors.blue,
          padding: EdgeInsets.only(
              top: MediaQuery
                  .of(context)
                  .padding
                  .top + 20,
              bottom: MediaQuery
                  .of(context)
                  .padding
                  .bottom + 20
          ),
          child: const Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 75,
                  color: Colors.white,
                ),
                // backgroundImage: NetworkImage(
                //     "https://static-00.iconduck.com/assets.00/user-icon-2048x2048-ihoxz4vq.png"),
              ),
            ],
          ));

  Widget buildMenu(BuildContext context) =>
      Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.route),
            title: const Text('Assignments'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.summarize),
            title: const Text('Workflow'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ],
      );










  }

/* Column _buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,

            ),
          ),
        ),
      ],
    );
  }*/



