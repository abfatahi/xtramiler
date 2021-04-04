import 'package:xtramiler/modules/imports.dart';

class Home extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          'Xtramiler',
          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 30),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.contact_support), onPressed: () {}),
          IconButton(icon: Icon(Icons.info), onPressed: () {})
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Center(
              child: Text(
                'Welcome to Xtramiler Logistics',
                style: TextStyle(fontSize: 25, fontFamily: 'Ubuntu'),
              ),
            ),
            Divider(
              thickness: 0.3,
            ),
            Text(
              'Complete the form below to request for any our delivery service' +
                  'such as: Door-to-Door Delivery, Errand Services, Office Delivery,' +
                  'Food Delivery, Pickup & Drop and many more',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Divider(
              thickness: 0.3,
            ),
            Text(
              "Sender's Details",
              style:
                  TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            new Inputbox(labelText: "Name", type: TextInputType.name),
            SizedBox(
              height: 20,
            ),
            new Inputbox(
                labelText: "Address", type: TextInputType.streetAddress),
            SizedBox(
              height: 20,
            ),
            new Inputbox(labelText: "Number", type: TextInputType.number),
            SizedBox(height: 10),
            Text(
              "Receiver's Details",
              style:
                  TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.bold),
            ),
            new Inputbox(labelText: "Name", type: TextInputType.name),
            SizedBox(
              height: 20,
            ),
            new Inputbox(
                labelText: "Address", type: TextInputType.streetAddress),
            SizedBox(
              height: 20,
            ),
            new Inputbox(labelText: "Number", type: TextInputType.number),
            SizedBox(height: 10),
            Text(
              "PickUp Details",
              style:
                  TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            new Inputbox(labelText: "PickUp Item", type: TextInputType.name),
            SizedBox(
              height: 20,
            ),
            new Inputbox(
                labelText: "Pickup Location",
                type: TextInputType.streetAddress),
            SizedBox(
              height: 20,
            ),
            new Inputbox(
                labelText: "Delivery Location", type: TextInputType.name),
            SizedBox(
              height: 20,
            ),
            new Inputbox(labelText: "Delivery Fee", type: TextInputType.number),
            SizedBox(height: 10),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.redAccent[700],
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
