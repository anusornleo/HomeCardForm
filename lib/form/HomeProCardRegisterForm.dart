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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: ListView(
                  children: <Widget>[
                    CustomInputTile(
                      controller: _idTax,
                      title: "Tax Identification Number",
                      hint: "Input Tax Number",
                      require: true,
                      typeInput: [WhitelistingTextInputFormatter.digitsOnly],
                      textInputType: TextInputType.number,
                    ),
                    CustomInputTile(
                      controller: _email,
                      title: "E-Mail",
                      hint: "you@email.com",
                      require: true,
                      typeInput: [],
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomInputTile(
                        controller: _fname,
                        title: "First Name",
                        hint: "First Name",
                        require: true,
                        typeInput: []),
                    CustomInputTile(
                        controller: _lname,
                        title: "Last Name",
                        hint: "Last Name",
                        require: true,
                        typeInput: []),
                    // bank
                    Container(
                      child: SizedBox(height: 20),
                      color: Colors.grey[300],
                    ),
                    CustomInputTile(
                      controller: _mobile,
                      title: "Mobile",
                      hint: "e.g. 0819999999",
                      require: true,
                      typeInput: [WhitelistingTextInputFormatter.digitsOnly],
                      textInputType: TextInputType.number,
                    ),
                    CustomInputTile(
                        controller: _otherContect,
                        title: "Other Contact Number",
                        hint: "e.g. 0819999999",
                        require: false,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly],
                        textInputType: TextInputType.number),
                    CustomInputTile(
                        controller: _ext,
                        title: "ext",
                        hint: "ext.",
                        require: false,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly],
                        textInputType: TextInputType.number),
                    // bank
                    Container(
                      child: SizedBox(height: 20),
                      color: Colors.grey[300],
                    ),
                    CustomInputTile(
                        controller: _houseNumber,
                        title: "Home No.",
                        hint: "Home No.",
                        require: true,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
                    CustomInputTile(
                        controller: _roomNumber,
                        title: "Room No.",
                        hint: "Room No.",
                        require: false,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
                    CustomInputTile(
                        controller: _floorNumber,
                        title: "Floor",
                        hint: "Floor",
                        require: false,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
                    CustomInputTile(
                        controller: _village,
                        title: "Village/Condo Name",
                        hint: "name",
                        require: false,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
                    CustomInputTile(
                        controller: _mooNumber,
                        title: "Moo",
                        hint: "Moo",
                        require: false,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
                    CustomInputTile(
                        controller: _soiNumber,
                        title: "Soi",
                        hint: "Soi",
                        require: false,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
                    CustomInputTile(
                        controller: _street,
                        title: "Street",
                        hint: "Street",
                        require: false,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
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
                  onPressed: () {
                    print(_idTax.text);
                    print(_email.text);
                    _formKey.currentState.validate();
//                    if (_formKey.currentState.validate()) {
//
//                    }
                  },
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

class CustomInputTile extends StatefulWidget {
  CustomInputTile(
      {Key key,
      @required TextEditingController controller,
      @required this.title,
      @required this.hint,
      @required this.require,
      @required this.typeInput,
      this.textInputType = TextInputType.text})
      : _controller = controller,
        super(key: key);

  final TextEditingController _controller;
  final String title;
  final String hint;
  final bool require;
  List<TextInputFormatter> typeInput;
  TextInputType textInputType;

  @override
  _CustomInputTileState createState() => _CustomInputTileState();
}

class _CustomInputTileState extends State<CustomInputTile> {
  Color colorText = Colors.black;

  @override
  Widget build(BuildContext context) {
    String dok = '';

    if (widget.require == true) {
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
                child: Text(widget.title,
                    style: TextStyle(
                        color: colorText,
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          Container(
            width: 180,
            padding: EdgeInsets.only(right: 10),
            child: TextFormField(
              controller: widget._controller,
              textAlign: TextAlign.right,
              maxLength: 10,
              style: TextStyle(fontSize: 15),
              keyboardType: widget.textInputType,
              inputFormatters: widget.typeInput,
              decoration: InputDecoration(
                  hintText: widget.hint,
                  hintStyle: TextStyle(color: colorText),
                  counterText: "",
                  border: InputBorder.none),
              validator: (value) {
                if (widget.require == true && value.isEmpty) changeStyle();
                return null;
              },
            ),
          )
        ],
      ),
    );
  }

  changeStyle() {
    setState(() {
      colorText = Colors.red;
    });
  }
}
