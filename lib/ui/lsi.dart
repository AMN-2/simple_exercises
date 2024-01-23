// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  String name = '';
  bool value1 = false;
  bool value2 = false;
  void changename(String TXT) {
    setState(() {
      name = TXT;
    });
  }

  void onChange(String value) {
    setState(() {
      name = value;
    });
  }

  void onsubmitted(String value) {
    setState(() {
      name = value;
    });
  }

  void OnChangeVlue(bool value) {
    value1 = value;
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are You male of female'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('please select '),
                // Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('male'),
              onPressed: () {
                print("male");
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('female'),
              onPressed: () {
                print('female');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showbottomsheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hi Ameen '),
              Container(
                height: 40,
                width: 90,
                color: Colors.amber,
                child: Center(
                  child: MaterialButton(
                    onPressed: () {
                      print("bottomsheet is colsed ! ");
                      return Navigator.pop(context);
                    },
                    child: Text(
                      'Close',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _askedToLead() async {
    switch (await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select assignment'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  name = 'yse';
                });
                Navigator.pop(context);
              },
              child: const Text('yse'),
            ),
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  name = 'no ';
                });
                Navigator.pop(context);
              },
              child: const Text('no'),
            ),
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  name = 'maybe ';
                });
                Navigator.pop(context);
              },
              child: const Text('maybe'),
            ),
          ],
        );
      },
    )) {}
  }
 
  var snackBar = SnackBar(
    content: Text('admin'),
    duration: Duration(seconds: 3),
    action: SnackBarAction(label: 'No', onPressed: (){ 
      print('admin is here '); 
    }),
  );
  showSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _showMyDialog,
        child: Icon(
          Icons.align_vertical_bottom,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Ameen App '),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Start Pgae Of Ex  ',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                ),
                Text('the result is : $name'),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 30,
                  width: 120,
                  color: Colors.deepPurple,
                  child: MaterialButton(
                    onPressed: () {
                      changename('admin');
                    },
                    child: Text(
                      'Click Here 1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 30,
                  width: 120,
                  color: Colors.deepPurple,
                  child: MaterialButton(
                    onPressed: () {
                      changename('TXT');
                    },
                    child: Text(
                      'Click Here 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 30,
                ),
                IconButton(
                  onPressed: () {
                    changename('Airplane Mode Is Connected  ');
                  },
                  icon: Icon(
                    Icons.airplane_ticket,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    changename('Bluetooth is connected ');
                  },
                  icon: Icon(
                    Icons.bluetooth,
                    size: 40,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(40),
                  color: Colors.red,
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      // hintText: name,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      prefixIconColor: Colors.white,
                      label: Text(name),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    onChanged: onChange,
                    onSubmitted: onsubmitted,
                  ),
                ),
                Checkbox(
                  value: value1,
                  onChanged: <bool>(value) {
                    setState(() {
                      this.value1 = value;
                    });
                    print(value);
                  },
                ),
                Switch(
                  value: value2,
                  onChanged: <bool>(value) {
                    setState(() {
                      value2 = value;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'The End ',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Start Pgae Of Ex  ',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                  Text('the result is : $name'),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    color: Colors.deepPurple,
                    child: MaterialButton(
                      onPressed: () {
                        changename('admin');
                      },
                      child: Text(
                        'Click Here 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    color: Colors.deepPurple,
                    child: MaterialButton(
                      onPressed: () {
                        changename('TXT');
                      },
                      child: Text(
                        'Click Here 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  IconButton(
                    onPressed: () {
                      changename('Airplane Mode Is Connected  ');
                    },
                    icon: Icon(
                      Icons.airplane_ticket,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      changename('Bluetooth is connected ');
                    },
                    icon: Icon(
                      Icons.bluetooth,
                      size: 40,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.all(40),
                    color: Colors.red,
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        // hintText: name,
                        fillColor: Colors.white,
                        hoverColor: Colors.white,
                        prefixIconColor: Colors.white,
                        label: Text(name),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      onChanged: onChange,
                      onSubmitted: onsubmitted,
                    ),
                  ),
                  Checkbox(
                    value: value1,
                    onChanged: <bool>(value) {
                      setState(() {
                        this.value1 = value;
                      });
                      print(value);
                    },
                  ),
                  Switch(
                    value: value2,
                    onChanged: <bool>(value) {
                      setState(() {
                        value2 = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'The End ',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    color: Colors.amber,
                    child: Center(
                      child: MaterialButton(
                        onPressed: () {
                          showbottomsheet();
                        },
                        child: Text(
                          'showbottomsheet',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(90),
                    height: 40,
                    color: Colors.amber,
                    child: MaterialButton(
                      onPressed: _askedToLead,
                      child: Center(
                        child: Text(
                          'Click Here 3 ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: ,) ,
                  Center(
                    child: ElevatedButton(
                      onPressed: showSnackBar,
                      child: const Text('Show SnackBar'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
