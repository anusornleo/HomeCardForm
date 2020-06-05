import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class HomeProCardRegisterForm extends StatefulWidget {
  @override
  _HomeProCardRegisterFormState createState() =>
      _HomeProCardRegisterFormState();
}

class _HomeProCardRegisterFormState extends State<HomeProCardRegisterForm> {
  final _formKey = GlobalKey<FormState>();

  String _idTex;
  String _email;
  String _fname;
  String _lname;
  String _mobile;
  String _otherContect;

  @override
  Widget build(BuildContext context) {
    final _idTax = TextEditingController();
    final _email = TextEditingController();
    final _fname = TextEditingController();
    final _lname = TextEditingController();
    final _mobile = TextEditingController();
    final _otherContect = TextEditingController();
    final _ext = TextEditingController();
    final _houseNumber = TextEditingController();
    final _roomNumber = TextEditingController();
    final _floorNumber = TextEditingController();
    final _village = TextEditingController();
    final _mooNumber = TextEditingController();
    final _soiNumber = TextEditingController();
    final _street = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//        floatingActionButton: Container(
//          width: 200,
//          height: 150,
//          color: Colors.green,
//          child: RaisedButton(
//            color: Colors.blue,
//            onPressed: () => {print(idTax.text)},
//            child: Icon(Icons.add_a_photo),
////            backgroundColor: Colors.blue,
//          ),
//        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: ListView(
                  children: <Widget>[
                    CustomInputTile(
                        idTax: _idTax,
                        title: "Tax Identification Number",
                        hint: "Input Tax Number",
                        require: true,
                        typeInput: WhitelistingTextInputFormatter.digitsOnly),
                    CustomInputTile(
                        idTax: _email,
                        title: "E-Mail",
                        hint: "you@email.com",
                        require: true,
                        typeInput: WhitelistingTextInputFormatter.digitsOnly),
                    CustomInputTile(
                        idTax: _fname,
                        title: "First Name",
                        hint: "First Name",
                        require: true),
                    CustomInputTile(
                        idTax: _lname,
                        title: "Last Name",
                        hint: "Last Name",
                        require: true),
                    // bank
                    Container(
                      child: SizedBox(height: 20),
                      color: Colors.grey[300],
                    ),
                    CustomInputTile(
                        idTax: _mobile,
                        title: "Mobile",
                        hint: "e.g. 0819999999",
                        require: true),
                    CustomInputTile(
                        idTax: _otherContect,
                        title: "Other Contact Number",
                        hint: "e.g. 0819999999",
                        require: false),
                    CustomInputTile(
                        idTax: _ext,
                        title: "ext",
                        hint: "ext.",
                        require: false),
                    // bank
                    Container(
                      child: SizedBox(height: 20),
                      color: Colors.grey[300],
                    ),
                    CustomInputTile(
                        idTax: _houseNumber,
                        title: "Home No.",
                        hint: "Home No.",
                        require: true),
                    CustomInputTile(
                        idTax: _roomNumber,
                        title: "Room No.",
                        hint: "Room No.",
                        require: false),
                    CustomInputTile(
                        idTax: _floorNumber,
                        title: "Floor",
                        hint: "Floor",
                        require: false),
                    CustomInputTile(
                        idTax: _village,
                        title: "Village/Condo Name",
                        hint: "name",
                        require: false),
                    CustomInputTile(
                        idTax: _mooNumber,
                        title: "Moo",
                        hint: "Moo",
                        require: false),
                    CustomInputTile(
                        idTax: _soiNumber,
                        title: "Soi",
                        hint: "Soi",
                        require: false),
                    CustomInputTile(
                        idTax: _street,
                        title: "Street",
                        hint: "Street",
                        require: false),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
                padding: EdgeInsets.all(10),
                height: 70,
                child: RaisedButton(
                  color: Colors.indigo,
                  onPressed: () => {print(_idTax.text)},
                  child: Text(
                    "SAVE",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
//            backgroundColor: Colors.blue,
                ),
              )
            ],
          ),
        ));
  }
}

class CustomInputTile extends StatelessWidget {
  const CustomInputTile({
    Key key,
    @required this.idTax,
    @required this.title,
    @required this.hint,
    @required this.require,
    this.typeInput,
  }) : super(key: key);

  final TextEditingController idTax;
  final String title;
  final String hint;
  final bool require;
  final WhitelistingTextInputFormatter typeInput;

  @override
  Widget build(BuildContext context) {
    String dok = '';
    if (require == true) {
      dok = "*";
    }
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.grey[300], width: 1))),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                child: Text(
                  dok,
                  style: TextStyle(color: Colors.red),
                ),
                top: 20,
                left: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20, left: 20),
                child: Text(title,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          Container(
            width: 180,
            padding: EdgeInsets.only(right: 10),
            child: TextFormField(
              controller: idTax,
              textAlign: TextAlign.right,
              maxLength: 10,
              style: TextStyle(fontSize: 15),
              keyboardType: TextInputType.number,
              inputFormatters: [typeInput],
              decoration: InputDecoration(
                  hintText: hint, counterText: "", border: InputBorder.none),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          )
        ],
      ),
    );
  }
}
