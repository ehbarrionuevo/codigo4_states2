import 'package:codigo4_states2/person.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> nombres = [
    "Carlos",
    "Carlos",
    "Carlos",
    "Carlos",
  ];

  // List<Map> people = [
  List<Person> people2 = [
    Person(
      name: "Juan Manuel",
      address: "Av. Lima",
      image:
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      birthDate: "12/12/1994",
    ),
    Person(
      name: "Raul Tapia Maldonado",
      address: "Av. Lima 12323 Mz A",
      image:
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      birthDate: "12/12/1994",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person = Person(
            name: "Ana Paolo Rosas",
            address: "Av. Cayma 1232",
            birthDate: "23/01/1996",
            image:
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          );
          people2.add(person);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Listado general",
        ),
      ),
      // body: Column(
      //   children: [
      //     Text("Inicio de la lista"),
      //     Text("Inicio de la lista"),
      //     Text("Inicio de la lista"),
      //     ...List.generate(
      //       nombres.length,
      //       (int index) => Text(
      //         nombres[index],
      //       ),
      //     ),
      //     Text("Fin de la lista"),
      //   ],
      // ),
      body: Column(
        children: people2
            .map(
              (Person e) => ListTile(
                title: Text(e.name),
                subtitle: Text(e.address),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(e.image),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
