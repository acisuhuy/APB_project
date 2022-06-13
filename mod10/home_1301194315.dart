import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final members = [
     'zaky Mahfudz pasha',
     'ujangkasep'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Jurnal MOD 10'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 4,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('zaky mahfudz pasha'),
                    SizedBox(
                      height: 5,
                    ),
                    Text('1301194315')
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: const Text(
                "Anggota Tim",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 350,
              child: ListView.builder(
                itemCount: members.length,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          )),
                      
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[300],
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      )),
                                  child: index % 3 == 0
                                      ? const Icon(
                                          Icons.account_circle,
                                          size: 50.0,
                                        )
                                      : const Icon(
                                          Icons.account_circle_outlined,
                                          size: 50.0,
                                        ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(members[index]),
                              ],
                            ),
                            const Icon(Icons.group)
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      height: 75,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      )),
                                  child: index % 3 == 0
                                      ? const Icon(
                                          Icons.account_circle,
                                          size: 50.0,
                                        )
                                      : const Icon(
                                          Icons.account_circle_outlined,
                                          size: 50.0,
                                        ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(members[index]),
                              ],
                            ),
                            const Icon(
                              Icons.group,
                            )
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          )

        ],
      ),
    );
  }
}
