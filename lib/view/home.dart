// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:indihomo_battle/widget/invoiceItem.dart';
import 'package:indihomo_battle/widget/promoItem.dart';

List<Map> invoiceData = [
  {
    'title': 'Total Tagihan Anda',
    'amount': 'Rp323.000',
    'date': '25 Juni 2023',
    'buttonText': 'Belum Dibayar',
    'subtitle': 'Tagihan Berikutnya',
    'buttonColor': Colors.red,
  },
  {
    'title': 'Penggunaan Kuota Internet',
    'amount': 'GB 128',
    'date': '25 Juli 2023',
    'buttonText': 'Masih berlaku',
    'subtitle': 'Batas Penggunaan',
    'buttonColor': const Color.fromARGB(255, 0, 202, 141),
  },
];

List<String> bannerData = [
  '1.jpg',
  '2.jpg',
  '3.jpg',
  '4.jpg',
  '5.jpg',
];
List<Map> promoData = [
  {
    'img': 'b1',
    'title': 'Paket Indihome: Netflix',
  },
  {
    'img': 'b2',
    'title': 'Paket Add-On: HBO GO',
  },
  {
    'img': 'b3',
    'title': 'Promo Spesial: Disney+ Hotstar',
  }
];

class homeIndihome extends StatefulWidget {
  const homeIndihome({Key? key}) : super(key: key);

  @override
  State<homeIndihome> createState() => _homeIndihomeState();
}

class _homeIndihomeState extends State<homeIndihome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/1.jpg'),
                        radius: 28.0,
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Amrul Izwan',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 24.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Text(
                            '0 Poin | Regular',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.qr_code_scanner,
                        color: Colors.grey[700],
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Icon(
                        Icons.email_outlined,
                        color: Colors.grey[700],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 135,
              width: 1000,
              child: ListView.builder(
                itemCount: invoiceData.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => invoiceItem(
                    amount: invoiceData[index]['amount'] as String,
                    date: invoiceData[index]['date'],
                    title: invoiceData[index]['title'],
                    buttonText: invoiceData[index]['buttonText'],
                    subtitle: invoiceData[index]['subtitle'],
                    buttonColor: invoiceData[index]['buttonColor']),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                "REKOMENDASI UNTUK ANDA",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[600]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8),
              height: 130,
              width: 1000,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bannerData.length,
                  itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/${bannerData[index]}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                "PENAWARAN TERBARU",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[600]),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 16, right: 8),
                height: 180,
                width: 1000,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: promoData.length,
                  itemBuilder: (context, index) => promoItem(
                      img: promoData[index]['img'],
                      title: promoData[index]['title']),
                ))
          ],
        ),
      ),
    ));
  }
}
