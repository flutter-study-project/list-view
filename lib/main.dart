import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(child: ExplicitListConstructuring()),
      ),
    );
  }
}

List<Person> people = [
  Person(1, 'minsoo', true),
  Person(1, 'minsoo', true),
  Person(1, 'minsoo', true),
  Person(1, 'minsoo', true),
];

class ExplicitListConstructuring extends StatelessWidget {
  // const ExplicitListConstructuring({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // padding: const EdgeInsets.all(8),
      children: <Widget>[
        HeaderTile(),
        PersonTile(people[0]),
        PersonTile(people[1]),
        PersonTile(people[2]),
      ],
    );
  }
}

class Person {
  int age;
  String name;
  bool isLeftHand;

  Person(this.age, this.name, this.isLeftHand);
}

class PersonHandIcon extends StatelessWidget {
  // const PersonHandIcon({Key? key}) : super(key: key);
  PersonHandIcon(this._is_LeftHand);

  final bool _is_LeftHand;

  @override
  Widget build(BuildContext context) {
    if (_is_LeftHand)
      return Icon(Icons.arrow_left);
    else
      return Icon(Icons.arrow_right);
  }
}

class PersonTile extends StatelessWidget {
  // const PersonTile({Key? key}) : super(key: key);

  PersonTile(this._person);

  final Person _person;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(_person.name),
      subtitle: Text(
        '$_person.age 세Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed autem optio quis nisi illo maxime neque ducimus hic dolore! Nam necessitatibus modi pariatur, labore sed quasi quaerat tempora sunt voluptate.',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
      isThreeLine: true,
      trailing: PersonHandIcon(_person.isLeftHand),
    );
  }
}

class HeaderTile extends StatelessWidget {
  // const HeaderTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          'https://t1.daumcdn.net/thumb/R720x0/?fname=https://t1.daumcdn.net/brunch/service/user/1YN0/image/ak-gRe29XA2HXzvSBowU7Tl7LFE.png'),
    );
  }
}
