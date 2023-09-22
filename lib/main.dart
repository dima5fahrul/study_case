import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade500),
        useMaterial3: true,
      ),
      home: const CheckGradeApps(),
    );
  }
}

class CheckGradeApps extends StatefulWidget {
  const CheckGradeApps({super.key});

  @override
  State<CheckGradeApps> createState() => _CheckGradeAppsState();
}

class _CheckGradeAppsState extends State<CheckGradeApps> {
  TextEditingController mataKuliah = TextEditingController();
  double counter = 0.0;
  String nilai = '';
  String matkul = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade500,
        title: const Text('Aplikasi Cek Nilai',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nama Mata Kuliah',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Masukkan nama mata kuliah',
                  ),
                  controller: mataKuliah,
                  textCapitalization: TextCapitalization.words,
                  onSubmitted: (value) => mataKuliah.text = value,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (counter > 2) {
                            counter -= 0.5;
                          } else if (counter > 0) {
                            counter--;
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(counter.toString(),
                        style: const TextStyle(fontSize: 35)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (counter < 2) {
                            counter++;
                          } else if (counter < 4) {
                            counter += 0.5;
                          }
                        });
                        print(counter);
                      },
                      child: Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      matkul = mataKuliah.text;

                      if (counter == 0.0) {
                        nilai = 'E';
                      } else if (counter == 1.0) {
                        nilai = 'D';
                      } else if (counter == 2.0) {
                        nilai = 'C';
                      } else if (counter == 2.5) {
                        nilai = 'BC';
                      } else if (counter == 3.0) {
                        nilai = 'B';
                      } else if (counter == 3.5) {
                        nilai = 'AB';
                      } else if (counter == 4.0) {
                        nilai = 'A';
                      }
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Cek Nilai',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )),
                const SizedBox(height: 20),
                Text(
                  matkul,
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 20),
                Text(
                  nilai,
                  style: const TextStyle(fontSize: 70),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
