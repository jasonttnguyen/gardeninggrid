import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart';


class WindowSillGrid extends StatefulWidget {
  @override
  _WindowSillGridState createState() => _WindowSillGridState();
}

class _WindowSillGridState extends State<WindowSillGrid> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final title = "P L A N T 3 R";

    return MaterialApp(
        title: title,
        home: Scaffold(
            backgroundColor: Colors.green[100],
            appBar: AppBar(
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20))),
              centerTitle: true,
              backgroundColor: Colors.green[600],
              title: Text(title),
            ),
            body: GridView.count(
                childAspectRatio: 0.80,
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  return Center(
                    child: ChoiceCard(
                        choice: PlantGrowth[index],
                        index: index,
                        callback: refresh),
                  );
                }))));
  }
}

class PlantGrowthIcons {
  PlantGrowthIcons({this.title, this.icon});

  String title;
  IconData icon;
}

List<PlantGrowthIcons> PlantGrowth = <PlantGrowthIcons>[
  PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
  PlantGrowthIcons(title: 'Add Plant', icon: MyFlutterApp.shovel),
];

class ChoiceCard extends StatelessWidget {
  ChoiceCard({Key key, this.choice, this.index, this.callback})
      : super(key: key);
  PlantGrowthIcons choice;
  final int index;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WindowSillGridEditPage(index: index)));
        callback();
      },
      child: Container(
        color: Colors.green[100],
        child: GridTile(
          child: Card(
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(choice.icon, size: 80.0, color: Colors.green[500]),
                  Text(
                    choice.title,
                    style: TextStyle(color: Colors.green[300]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WindowSillGridEditPage extends StatefulWidget {
  final int index;
  WindowSillGridEditPage({this.index});

  @override
  _WindowSillGridEditPageState createState() => _WindowSillGridEditPageState();
}

class _WindowSillGridEditPageState extends State<WindowSillGridEditPage> {
  List<Widget> items;

  @override
  initState() {
    items = [
      InkWell(
        onTap: () {
          PlantGrowth[widget.index].title = "Asparagus";
          PlantGrowth[widget.index].icon = MyFlutterApp.sprout;
        },
        child: ListTile(
          leading: Icon(MyFlutterApp.sprout, size: 50),
          title: Text('Asparagus'),
          subtitle: Text('Description here'),
        ),
      ),
      InkWell(
        onTap: () {
          PlantGrowth[widget.index].title = "Egg Plant";
          PlantGrowth[widget.index].icon = MyFlutterApp.sprout;
        },
        child: ListTile(
            leading: Icon(MyFlutterApp.sprout, size: 50),
            title: Text('Egg Plant'),
            subtitle: Text('Description here')),
      ),
      InkWell(
        onTap: () {
          PlantGrowth[widget.index].title = "Tomato";
          PlantGrowth[widget.index].icon = MyFlutterApp.sprout;
        },
        child: ListTile(
          leading: Icon(MyFlutterApp.sprout, size: 50),
          title: Text('Tomato'),
          subtitle: Text('Description here'),
        ),
      ),
      InkWell(
        onTap: () {
          PlantGrowth[widget.index].title = "Cucumber";
          PlantGrowth[widget.index].icon = MyFlutterApp.sprout;
        },
        child: ListTile(
          leading: Icon(MyFlutterApp.sprout, size: 50),
          title: Text('Cucumber'),
          subtitle: Text('Description here'),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[600],
        title: Text('Plant3r'),
      ),
      body: Container(
        child: ListView(
          itemExtent: 60,
          children: items,
        ),
      ),
    );
  }
}
/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WindowSillGrid(),
    );
  }
}
*/

/*

class WindowSillGrid extends StatefulWidget {
  @override
  _WindowSillGridState createState() => _WindowSillGridState();
}

class _WindowSillGridState extends State<WindowSillGrid> {
  @override

  Widget build(BuildContext context) {
    final title = "Window Sill Grid";

    return MaterialApp(
        title: title,
        home: Scaffold(
            backgroundColor: Colors.brown[400],
            appBar: AppBar(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20))),
              centerTitle: true,
              backgroundColor: Colors.green[600],
              title: Text(title),
            ),
            body: GridView.count(
                childAspectRatio: 1.0,
                crossAxisCount: 2,
                children: List.generate(6, (index) {
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


];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final PlantGrowthIcons choice;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { 
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WindowSillGridEditPage()));},
    child: Container(
      color: Colors.brown[300],
        child: GridTile(
      //decoration:
      //BoxDecoration(border: Border.all(color: Colors.black, width: 0.5)),
          child: Card(
          color: Colors.brown[400],
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(choice.icon, size: 80.0, color: Colors.white),
                  Text(choice.title,  style: TextStyle(color: Colors.white),),
                ],
            ),
          ),
          ),
    ),
    ),
    );
  }
}

const List<Widget> items = const[
  ListTile(
        leading: Icon(MyFlutterApp.sprout, size: 50),
        title: Text('Asparagus'),
        subtitle: Text('Description here'),
        ),
  ListTile(
        leading: Icon(MyFlutterApp.sprout, size: 50),
        title: Text('Egg Plant'),
        subtitle: Text('Description here')
      ),
  ListTile(
        leading: Icon(MyFlutterApp.sprout, size: 50),
        title: Text('Tomato'),
        subtitle: Text('Description here'),
      ),
  ListTile(
          leading: Icon(MyFlutterApp.sprout, size: 50),
      title: Text('Cucumber'),
      subtitle: Text('Description here'),
      ),
  ListTile(
        leading: Icon(MyFlutterApp.sprout, size: 50),
        title: Text('Asparagus'),
        subtitle: Text('Description here'),
      ),
  ListTile(
          leading: Icon(MyFlutterApp.sprout, size: 50),
          title: Text('Egg Plant'),
          subtitle: Text('Description here')
      ),
  ListTile(
        leading: Icon(MyFlutterApp.sprout, size: 50),
        title: Text('Tomato'),
        subtitle: Text('Description here'),
      ),
  ListTile(
          leading: Icon(MyFlutterApp.sprout, size: 50),
      title: Text('Cucumber'),
      subtitle: Text('Description here'),
      ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Asparagus'),
    subtitle: Text('Description here'),
  ),
  ListTile(
      leading: Icon(MyFlutterApp.sprout, size: 50),
      title: Text('Egg Plant'),
      subtitle: Text('Description here')
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Tomato'),
    subtitle: Text('Description here'),
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Cucumber'),
    subtitle: Text('Description here'),
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Asparagus'),
    subtitle: Text('Description here'),
  ),
  ListTile(
      leading: Icon(MyFlutterApp.sprout, size: 50),
      title: Text('Egg Plant'),
      subtitle: Text('Description here')
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Tomato'),
    subtitle: Text('Description here'),
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Cucumber'),
    subtitle: Text('Description here'),
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Asparagus'),
    subtitle: Text('Description here'),
  ),
  ListTile(
      leading: Icon(MyFlutterApp.sprout, size: 50),
      title: Text('Egg Plant'),
      subtitle: Text('Description here')
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Tomato'),
    subtitle: Text('Description here'),
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Cucumber'),
    subtitle: Text('Description here'),
  ),
  ListTile(
    leading: Icon(MyFlutterApp.sprout, size: 50),
    title: Text('Asparagus'),
    subtitle: Text('Description here'),
  ),
  ListTile(
leading: Icon(MyFlutterApp.sprout, size: 50),
title: Text('Egg Plant'),
subtitle: Text('Description here')
),
  ListTile(
leading: Icon(MyFlutterApp.sprout, size: 50),
title: Text('Tomato'),
subtitle: Text('Description here'),
),
  ListTile(
leading: Icon(MyFlutterApp.sprout, size: 50),
title: Text('Cucumber'),
subtitle: Text('Description here'),
),
];

class WindowSillGridEditPage extends StatefulWidget {
  @override
  _WindowSillGridEditPageState createState() => _WindowSillGridEditPageState();
}

class _WindowSillGridEditPageState extends State<WindowSillGridEditPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[600],
        title: Text('Plant3r'),
      ),
      body: Container(
        child:
        ListView(

          itemExtent: 60,
          children: items,
        ),

      ),
    );}
}*/