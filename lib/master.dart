import 'package:flutter/material.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({Key? key}) : super(key: key);

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    )),
              ],
            )
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/box2.jpg'), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Choose your jet',
                    style: TextStyle(color: Colors.amber, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.article_sharp,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/box1.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '  Airplan',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text(
                              'The most comfortable and\nfaster plane for your goals...',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                          const Divider(),
                          Row(
                            children: const [
                              Text(
                                '    4.8',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 15),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(width: 40),
                              Text(
                                'from 900 \$',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.amber),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 5),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/box2.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '  Private Jet',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text(
                              'Perfect and the nost faster\nplane',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                          const Divider(),
                          Row(
                            children: const [
                              Text(
                                '     5',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 15),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(width: 40),
                              Text(
                                '  from 700 \$',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.amber),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 5),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/box3.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '  Famaly plane',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text(
                              'The most comfortable and\nfaster plane for your goals...',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 254, 249, 249),
                              ),
                            ),
                          ),
                          const Divider(),
                          Row(
                            children: const [
                              Text(
                                '   4.7',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(width: 30),
                              Text(
                                'from 1000 \$',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.amber),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: const Text(
                'Show all',
                style: TextStyle(color: Colors.amber, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: const Text(
                'Do not know which one your need, call us and we\n                                  will help you',
                style: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 2,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.amber),
                  color: Colors.grey.shade700),
              alignment: Alignment.center,
              child: const Text(
                'Call us',
                style: TextStyle(color: Colors.amber, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
