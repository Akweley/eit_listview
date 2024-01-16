import 'package:flutter/material.dart';

class BasicListPage extends StatefulWidget {
  const BasicListPage({super.key, required this.title});

  final String title;

  @override
  State<BasicListPage> createState() => _BasicListPageState();
}

class _BasicListPageState extends State<BasicListPage> {
  List<String> feedItems = [
    "Bright", 
    "Abena", 
    "Grace", 
    "Joe", 
    "Jason"
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text("Skip Now",
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.underline)),
          ),
        ],
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Text("Back",
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.underline)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          const Text("Choose what you would like to make your habit",
              style: TextStyle(fontSize: 28, color: Colors.white),
              textAlign: TextAlign.center),
          Expanded(
            child: ListView.builder(
              itemCount: feedItems.length,
              itemBuilder: (BuildContext context, int position) {
                String name = feedItems[position];
                Color color = position % 2 == 0 ? Colors.red : Colors.amber;
                return _listItemView(name, position, color);
                
              },
            ),
          )
        ]),
      ),
    );
  }

Widget _listItemView(String name, int position, Color color){
  return Card(
                  color: color,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  child: SizedBox(
                    //margin: EdgeInsets.only(bottom: 8),
                    height: 100,
                    //color: Colors.white,
                    child: ListTile(
                      title: Text(name),
                      subtitle: Text(name),
                      trailing: const Icon(Icons.bolt),
                    ),
                  ),
                );
}


}
