import 'package:flutter/material.dart';

class CheckGradeAppsTesting extends StatefulWidget {
  const CheckGradeAppsTesting({super.key});

  @override
  State<CheckGradeAppsTesting> createState() => _MyAppState();
}

class _MyAppState extends State<CheckGradeAppsTesting> {
  TextEditingController mataKuliah = TextEditingController();
  double counter = 0;

  String matkul = '';
  String nilai = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          'Aplikasi Cek Nilai',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
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
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: 'Masukkan Nama Mata Kuliah',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  cursorColor: Colors.blue.shade500,
                  controller: mataKuliah,
                  textCapitalization: TextCapitalization.words,
                  onSubmitted: (value) => mataKuliah.text = value,
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    Text(
                      counter.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (counter < 2) {
                            counter++;
                          } else if (counter < 4) {
                            counter += 0.5;
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
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                      decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Cek Nilai',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  matkul,
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 20),
                Text(
                  nilai,
                  style: const TextStyle(fontSize: 70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CheckGradeApps2 extends StatefulWidget {
  const CheckGradeApps2({super.key});

  @override
  State<CheckGradeApps2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CheckGradeApps2> {
  TextEditingController mataKuliah = TextEditingController();
  double counter = 0.0;

  String matkul = '';
  String nilai = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text(
          'Aplikasi Cek Nilai',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Nama Mata Kuliah',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Masukkan Nama Mata Kuliah',
                ),
                controller: mataKuliah,
                textCapitalization: TextCapitalization.words,
                onSubmitted: (value) => mataKuliah.text = value,
              ),
              const SizedBox(
                height: 20,
              ),
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
                  Text(
                    counter.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (counter < 2) {
                          counter++;
                        } else if (counter < 4) {
                          counter += 0.5;
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
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                    decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Cek Nilai',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
