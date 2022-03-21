import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class SummaryDetails extends StatefulWidget {
  const SummaryDetails({Key? key}) : super(key: key);

  @override
  _SummaryDetailsState createState() => _SummaryDetailsState();
}

class _SummaryDetailsState extends State<SummaryDetails> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool _switchValue = true;
  double _value = 3.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf3f4fa),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Container(
            width: size.width / 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(const Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: .5,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_pin,
                    color: Color(0xFFff3c1c),
                    size: 17,
                  ),
                  Text(
                    '99 E 52nd St, New York',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Weight',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            '2.7 ibs',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const Icon(
                            CupertinoIcons.timer,
                            color: Color(0xFFff3c1c),
                          )
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: SfSlider(
                      min: 0,
                      max: 5,
                      value: _value,
                      interval: 1,
                      minorTicksPerInterval: 1,
                      showTicks: true,
                      showLabels: true,
                      onChanged: (dynamic newValue) {
                        setState(() {
                          _value = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Size',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Large XL',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const Icon(
                            CupertinoIcons.app,
                            color: Color(0xFFff3c1c),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(border: Border.all()),
                                child: Image.asset('assets/images/1.png'),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Small',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  const Text(
                                    "\$3",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Color(0xFFff3c1c),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Fits in a issue box ',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const Text(
                                '27 x 4 x 31 cm',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(border: Border.all()),
                                child: Image.asset('assets/images/2.png'),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Medium',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 47,
                                  ),
                                  const Text(
                                    "\$5",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Color(0xFFff3c1c),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Fits in a issue box ',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const Text(
                                '29 x 6 x 33 cm',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(border: Border.all()),
                                child: Image.asset(
                                  'assets/images/3.png',
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Large',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  const Text(
                                    "\$9",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Color(0xFFff3c1c),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Fits in a hoover box ',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const Text(
                                '54 x 54 x 54 cm',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Notes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const Icon(
                        CupertinoIcons.cube,
                        color: Color(0xFFff3c1c),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Please, tell us about your parcel a few words.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'a lot of things for my house. Be careful, please!',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My parcel is fragile!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      CupertinoSwitch(
                        activeColor: Color(0xFFff3c1c),
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Column(
                children: [
                  const Text(
                    'Summary details',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFf3f4fa),
                        fontWeight: FontWeight.bold),
                  ),
                  const Text('Total Payment - \$21',
                      style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFFf3f4fa),
                          fontWeight: FontWeight.bold)),
                ],
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFff3c1c),
                  minimumSize: const Size(360, 70),
                  elevation: 25, //Defines Elevation
                  shadowColor: Color(0xFFff3c1c),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
            )
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFff3c1c),
        items: [
          const BottomNavigationBarItem(
            icon: const Icon(Icons.assignment),
            label: 'History',
            backgroundColor: Color(0xFFff3c1c),
          ),
          const BottomNavigationBarItem(
            icon: const Icon(
              CupertinoIcons.cube_box,
            ),
            label: 'Delivery',
            backgroundColor: Color(0xFFff3c1c),
          ),
          const BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.person),
            label: 'Profile',
            backgroundColor: Color(0xFFff3c1c),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
