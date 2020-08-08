import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart';

class SmallSwimmingPoolGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Small Swimming Pool Grid";

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20))),
              centerTitle: true,
              backgroundColor: Colors.green[600],
              title: Text(title),
            ),
            body: GridView.count(
                crossAxisCount: 4,
                children: List.generate(32, (index) {
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
                Text(choice.title,  style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class SmallSwimmingPoolGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Small Swimming Pool Garden';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: List.generate(32, (index) {
            return Center(
              child: Text(
                'Plant $index',
              ),
            );
          }),
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
      ),
    );
  }
}*/
