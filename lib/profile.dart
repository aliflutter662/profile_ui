import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "",
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('images/phto.png')),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 1.5,
                        color: Colors.indigo.shade800,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "points",
                      style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 1.5,
                        color: Colors.indigo.shade800,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    //   color: Color.fromARGB(255, 197, 190, 190),
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            "General",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.indigo[800],
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ExpansionTile(
                          title: Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'My Profile',
                                style: TextStyle(color: Colors.indigo[400]),
                              )
                            ],
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.only(left: 18, right: 12),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'First name',
                                      style:
                                          TextStyle(color: Colors.indigo[400]),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Last name',
                                      style:
                                          TextStyle(color: Colors.indigo[400]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.only(left: 18, right: 12),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.email,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Email',
                                      style:
                                          TextStyle(color: Colors.indigo[400]),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Icon(
                                      Icons.phone,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Phone Number',
                                      style:
                                          TextStyle(color: Colors.indigo[400]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            // ListTile(
                            //   title: Padding(
                            //     padding:
                            //         const EdgeInsets.only(left: 18, right: 12),
                            //     child: Row(
                            //       children: [
                            //         Icon(
                            //           Icons.phone,
                            //           color: Colors.grey,
                            //         ),
                            //         SizedBox(
                            //           width: 10,
                            //         ),
                            //         Text(
                            //           'Phone Number',
                            //           style: TextStyle(color: Colors.indigo[400]),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.only(left: 18, right: 12),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.house,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'City',
                                      style:
                                          TextStyle(color: Colors.indigo[400]),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Icon(
                                      Icons.flag,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Country',
                                      style:
                                          TextStyle(color: Colors.indigo[400]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ExpansionTile(
                    title: Row(
                      children: [
                        Icon(
                          Icons.vpn_key,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Change Password',
                          style: TextStyle(color: Colors.indigo[400]),
                        )
                      ],
                    ),
                    children: <Widget>[],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 15),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialogg();
                            });
                        // _showMyDialogTraining();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.subscriptions,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Subscriptions',
                            style: TextStyle(color: Colors.indigo[400]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 30),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog2();
                            });
                        // _showMyDialogTraining1();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(color: Colors.indigo[400]),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: 250,
            left: 135,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: Icon(
                  Icons.school,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showMyDialogTraining() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Already Subscribed',
            style: TextStyle(color: Colors.indigo),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You are already subscriber.!',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            height: 45,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            color: Colors.indigo,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Ok',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('Done'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }

  Future<void> _showMyDialogTraining1() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'You are not subscribed',
            style: TextStyle(color: Colors.indigo),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Do you wish to buy subcription?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            height: 45,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            color: Colors.red.shade400,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Buy subscription',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('Done'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.indigo;
    Path path = Path()
      ..relativeLineTo(-60, 350) //150
      ..quadraticBezierTo(size.width / 2, 210, size.width, 110)
      ..relativeLineTo(50, -150) //150
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class Dialog2 extends StatefulWidget {
  Dialog2({Key? key}) : super(key: key);

  @override
  State<Dialog2> createState() => _Dialog2State();
}

class _Dialog2State extends State<Dialog2> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 12,
                top: 12,
                right: 12,
                bottom: 12,
              ),
              margin: EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10,
                    ),
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 45),
                  Visibility(
                    //   visible: widget.visibility,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'You are not subscribed',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.indigo[800],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Do you wish to\n\nbuy subscription?',
                    style: TextStyle(
                      color: Colors.grey,
                      // fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.red,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Buy subscription',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: -3,
              left: 12,
              right: 12,
              child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 32,
                  child: Icon(
                    Icons.done,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Dialogg extends StatefulWidget {
  Dialogg({Key? key}) : super(key: key);

  @override
  State<Dialogg> createState() => _DialoggState();
}

class _DialoggState extends State<Dialogg> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 12,
                top: 12,
                right: 12,
                bottom: 12,
              ),
              margin: EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10,
                    ),
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 45),
                  Visibility(
                    //   visible: widget.visibility,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Already Subscribed',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.indigo[800],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'You are already subscriber.!',
                    style: TextStyle(
                      color: Colors.grey,
                      // fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: 45,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.indigo,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: -3,
              left: 12,
              right: 12,
              child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 32,
                  child: Icon(
                    Icons.done,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
