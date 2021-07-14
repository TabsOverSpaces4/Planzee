import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: About(),
    ));

class About extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<About> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      appBar: AppBar(
        title: Text('About this Event'),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.purple[200],
        child: Icon(Icons.navigate_before,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage("lib/assets/images/logo.png"),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
Container(
    padding: EdgeInsets.all(10),
    child: Center(
        child: Text(
          'Launched in 2015, Ethereum is an open-source, blockchain-based, decentralized software platform used for its own cryptocurrency, ether. It enables SmartContracts and Distributed Applications (ĐApps) to be built and run without any downtime, fraud, control, or interference from a third party. he applications run on Ethereum are run on a platform-specific cryptographic token, ether. During 2014, Ethereum had launched a pre-sale for ether which had received an overwhelming response. Ether is like a vehicle for moving around on the Ethereum platform and is mostly sought by developers looking to develop and run applications inside Ethereum. Ether is used broadly for two purposes: it is traded as a digital currency exchange like other cryptocurrencies, and it is used inside Ethereum to run applications and even to monetize work.',
          style: TextStyle(color: Colors.grey, fontSize: 18, height: 1.5),)
    )
)
          ],
          
        ),
      ),
    );
  }
}
