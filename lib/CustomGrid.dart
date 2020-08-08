import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart';

class CustomGridInput extends StatefulWidget {
  @override
  _CustomGridInputState createState() => _CustomGridInputState();
}

class _CustomGridInputState extends State<CustomGridInput> {
  var _textwidthController = TextEditingController();
  var _textlengthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Custom Garden"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text('What is the Width of your Garden in feet?',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
          ListTile(
            title: TextFormField(
              textAlign: TextAlign.center,
              decoration:
                  InputDecoration(labelText: 'Enter numerical width here'),
              controller: _textwidthController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 40),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text('What is the Length of your Garden in feet?',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
          ListTile(
            title: TextFormField(
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration:
                  InputDecoration(labelText: 'Enter numerical length here'),
              controller: _textlengthController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          ListTile(
            title: RaisedButton(
              color: Colors.green[600],
              child: Text("Next"),
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => CustomGridOutput(
                      length: _textwidthController.text,
                      width: _textlengthController.text),
                );
                Navigator.of(context).push(route);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomGridOutput extends StatefulWidget {
  final String length;
  final String width;

  CustomGridOutput({Key key, this.length, this.width}) : super(key: key);

  @override
  @override
  _CustomGridOutputState createState() => _CustomGridOutputState();
}

class _CustomGridOutputState extends State<CustomGridOutput> {
  Widget build(BuildContext context) {
    var length = int.parse("${widget.length}");
    var width = int.parse("${widget.width}");
    final title = "Small Swimming Pool Grid";

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.green[600],
              title: Text(title),
            ),
            body: GridView.count(
                crossAxisCount: width,
                children: List.generate(length * width, (index) {
                  return Center(
                    child: ChoiceCard(choice: PlantGrowth[index]),
                  );
                }))));
  }
}

class PlantGrowthIcons {
  const PlantGrowthIcons({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<PlantGrowthIcons> PlantGrowth = const <PlantGrowthIcons>[
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  const PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final PlantGrowthIcons choice;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        color: Colors.brown[300],
        //decoration:
        //BoxDecoration(border: Border.all(color: Colors.black, width: 0.5)),
        child: Card(
          color: Colors.brown[400],
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(choice.icon, size: 40.0, color: Colors.white),
                Text(
                  choice.title,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
class CustomGridOutput extends StatefulWidget {
  final String length;
  final String width;

  CustomGridOutput({Key key, this.length, this.width}) : super(key: key);

  @override
  _CustomGridOutputState createState() => _CustomGridOutputState();
}

class _CustomGridOutputState extends State<CustomGridOutput> {
  @override
  Widget build(BuildContext context) {
    var length = int.parse("${widget.length}");
    var width = int.parse("${widget.width}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Custom Garden"),
      ),
      body: GridView.count(
        crossAxisCount: length,
        children: List.generate(
          length * width,
          (index) {
            return Center(
              child: Text('Plant $index'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(
          Icons.add_circle,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        backgroundColor: Colors.green,
      ),
    );
  }
}
*/
