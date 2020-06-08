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
  final _otherContact = TextEditingController();
  final _ext = TextEditingController();
  final _houseNumber = TextEditingController();
  final _roomNumber = TextEditingController();
  final _floorNumber = TextEditingController();
  final _village = TextEditingController();
  final _mooNumber = TextEditingController();
  final _soiNumber = TextEditingController();
  final _street = TextEditingController();

  String validateIDText(String a) {
    if (a.isEmpty || a.length < 10) {
      return "invalid";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    String title = 'title';
    String hint = "hint";
    bool require = false;
    final controller = TextEditingController();
    Widget widgetForSelect = Text("ddd");
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
                      lengthText: 10,
                      max: 10,
                    ),
                    CustomInputTile(
                      controller: _email,
                      title: "E-Mail",
                      hint: "you@email.com",
                      require: true,
                      typeInput: [],
                      textInputType: TextInputType.emailAddress,
                      regExp: RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
                    ),
                    CustomInputTile(
                      controller: _fname,
                      title: "First Name",
                      hint: "First Name",
                      require: true,
                    ),
                    CustomInputTile(
                        controller: _lname,
                        title: "Last Name",
                        hint: "Last Name",
                        require: true,
                        typeInput: []),
                    SelectWidget(title: "Birthday", hint: "10/10/10"),
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
                      lengthText: 10,
                      max: 10,
                    ),
                    CustomInputTile(
                      controller: _otherContact,
                      title: "Other Contact Number",
                      hint: "e.g. 0819999999",
                      typeInput: [WhitelistingTextInputFormatter.digitsOnly],
                      textInputType: TextInputType.number,
                      lengthText: 10,
                    ),
                    CustomInputTile(
                        controller: _ext,
                        title: "ext",
                        hint: "ext.",
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly],
                        textInputType: TextInputType.number),
                    // bank
                    Container(
                      child: SizedBox(height: 20),
                      color: Colors.grey[300],
                    ),
                    SelectWidget(
                        require: true, title: "House Type", hint: "10/10/10"),
                    CustomInputTile(
                        controller: _houseNumber,
                        title: "Home No.",
                        hint: "Home No.",
                        require: true,
                        textInputType: TextInputType.number,
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
                    CustomInputTile(
                      controller: _roomNumber,
                      title: "Room No.",
                      hint: "Room No.",
                    ),
                    CustomInputTile(
                      controller: _floorNumber,
                      title: "Floor",
                      hint: "Floor",
                    ),
                    CustomInputTile(
                      controller: _village,
                      title: "Village/Condo Name",
                      hint: "name",
                    ),
                    CustomInputTile(
                        controller: _mooNumber,
                        title: "Moo",
                        hint: "Moo",
                        typeInput: [WhitelistingTextInputFormatter.digitsOnly]),
                    CustomInputTile(
                      controller: _soiNumber,
                      title: "Soi",
                      hint: "Soi",
                    ),
                    CustomInputTile(
                      controller: _street,
                      title: "Street",
                      hint: "Street",
                    ),
                    SelectWidget(
                        require: true, title: "Province", hint: "10/10/10"),
                    SelectWidget(
                        require: true, title: "District", hint: "10/10/10"),
                    SelectWidget(
                        require: true, title: "Sub-District", hint: "10/10/10"),
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
                    if (_formKey.currentState.validate()) {
                      print("validate success");
                      print("ID tax :       " + _idTax.text);
                      print("email :        " + _email.text);
                      print("fname :        " + _fname.text);
                      print("lname :        " + _lname.text);
                      print("birthday :     " + "10/10/2020 [mock]");
                      print("mobile :       " + _mobile.text);
                      print("other :        " + _otherContact.text);
                      print("ext :          " + _ext.text);
                      print("house type :   " + "Single [mock]");
                      print("house no :     " + _houseNumber.text);
                      print("room :         " + _roomNumber.text);
                      print("floor :        " + _floorNumber.text);
                      print("village :      " + _village.text);
                      print("moo :          " + _mooNumber.text);
                      print("soi :          " + _soiNumber.text);
                      print("street :       " + _street.text);
                      print("Province :     " + "bangkok [mock]");
                      print("District :     " + "bangna [mock]");
                      print("Sub-District : " + "bangna, 10202 [mock]");
                    } else {
                      print("not validate");
                    }
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

class SelectWidget extends StatelessWidget {
  const SelectWidget({
    Key key,
    this.require = false,
    @required this.title,
    @required this.hint,
  }) : super(key: key);

  final bool require;
  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    String dok = '';
    if (require == true) {
      dok = "*";
    }
    return GestureDetector(
      onTap: () {
        print("open select");
      },
      child: Container(
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
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
              ],
            ),
            Container(
              width: 180,
              padding: EdgeInsets.only(right: 10),
              child: Stack(
                children: <Widget>[
                  TextFormField(
                    enabled: false,
                    initialValue: "Value",
                    controller: null,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        counterText: "",
                        border: InputBorder.none),
                    validator: (value) {
//                                    validate(value);

                      return null;
                    },
                  ),
                  require
                      ? Positioned(
                          bottom: 0,
                          right: 0,
                          child: Text(
                            "showError",
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          ),
                        )
                      : Positioned(
                          bottom: 0,
                          right: 0,
                          child: Text(
                            "",
                            style: TextStyle(color: Colors.red, fontSize: 10),
                          ),
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomInputTile extends StatefulWidget {
  CustomInputTile(
      {Key key,
      @required TextEditingController controller,
      @required this.title,
      @required this.hint,
      this.require = false,
      this.typeInput,
      this.textInputType = TextInputType.text,
      this.validate,
      this.lengthText,
      this.min,
      this.max,
      this.regExp})
      : _controller = controller,
        super(key: key);

  final TextEditingController _controller;
  final String title;
  final String hint;
  final bool require;
  final List<TextInputFormatter> typeInput;
  final TextInputType textInputType;
  final String validate;

  final int max;
  final int min;
  final int lengthText;

  final RegExp regExp;

  @override
  _CustomInputTileState createState() => _CustomInputTileState();
}

class _CustomInputTileState extends State<CustomInputTile> {
  Color colorText = Colors.grey[500];
  String showError;

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
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          Container(
            width: 180,
            padding: EdgeInsets.only(right: 10),
            child: Stack(
              children: <Widget>[
                TextFormField(
                  controller: widget._controller,
                  textAlign: TextAlign.right,
                  maxLength: widget.max,
                  style: TextStyle(fontSize: 15),
                  keyboardType: widget.textInputType,
                  inputFormatters: widget.typeInput,
                  decoration: InputDecoration(
                      hintText: widget.hint,
                      hintStyle: TextStyle(color: colorText),
                      counterText: "",
                      errorStyle: TextStyle(height: 0, fontSize: 0),
                      border: InputBorder.none),
                  onChanged: (value) {
                    validate(value);
                  },
                  validator: (value) {
                    validate(value);
                    return validate(value);
                  },
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text(
                    showError != null ? showError : "",
                    style: TextStyle(color: Colors.red, fontSize: 10),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  String validate(String value) {
    if (widget.require == true && value.length == 0) {
      setState(() {
        showError = "Please input";
      });
    } else if (widget.lengthText != null &&
        value.length != widget.lengthText &&
        value.length > 0) {
      setState(() {
        showError = "put text length ${widget.lengthText}";
      });
    } else if (widget.min != null &&
        value.length < widget.min &&
        value.length > 0) {
      setState(() {
        showError = "put more than ${widget.min}";
      });
    } else if (widget.max != null &&
        value.length > widget.max &&
        value.length > 0) {
      setState(() {
        showError = 'put less than ${widget.max}';
      });
    } else if (widget.regExp != null &&
        !widget.regExp.hasMatch(value) &&
        value.length > 0) {
      setState(() {
        showError = 'Invalid format';
      });
    } else {
      setState(() {
        showError = null;
      });
    }
    return showError;
  }
}
