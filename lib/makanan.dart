import 'package:balangan_go/model.dart';
import 'package:flutter/material.dart';

class MakananPage extends StatefulWidget {
  const MakananPage({super.key});

  @override
  State<MakananPage> createState() => _MakananPageState();
}

class _MakananPageState extends State<MakananPage> {
  List makananList = [
    Makanan(
        nama: "Mie Ayam",
        harga: 1000,
        gambar:
            "https://asset.kompas.com/crops/krSLAkJhiYmOL3g6b6c-x_9p1sI=/98x0:944x564/750x500/data/photo/2023/04/14/6438d1d8bc59b.jpeg"),
    Makanan(
        nama: "Nasi Goreng",
        harga: 15000,
        gambar:
            "https://asset.kompas.com/crops/krSLAkJhiYmOL3g6b6c-x_9p1sI=/98x0:944x564/750x500/data/photo/2023/04/14/6438d1d8bc59b.jpeg"),
    Makanan(
        nama: "Nasi Goreng 2",
        harga: 25000,
        gambar:
            "https://asset.kompas.com/crops/krSLAkJhiYmOL3g6b6c-x_9p1sI=/98x0:944x564/750x500/data/photo/2023/04/14/6438d1d8bc59b.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Makanan"),
          backgroundColor: Colors.green[700],
        ),
        body: ListView.builder(
          itemCount: makananList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.network(makananList[index].gambar),
                title: Text(makananList[index].nama),
                subtitle: Text("Harga: ${makananList[index].harga}"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  //Toast
                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //   content: Text("Anda memilih ${makananList[index].nama}"),
                  //   duration: Duration(seconds: 3),
                  // ));
                  // SnackBar snackBar = SnackBar(
                  //   content: Text("Anda memilih ${makananList[index].nama}"),
                  //   duration: Duration(seconds: 3),
                  // );
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  //Toast
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Konfirmasi"),
                        content: Text(
                            "Apakah anda yakin ingin membeli ${makananList[index].nama}?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Tidak"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                    "Anda telah membeli ${makananList[index].nama}"),
                                duration: Duration(seconds: 3),
                              ));
                            },
                            child: Text("Ya"),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        ));
  }
}
