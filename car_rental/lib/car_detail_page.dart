import 'package:flutter/material.dart';
import 'order_page.dart';

class CarDetailPage extends StatelessWidget {
  final Map<String, dynamic> car;
  final int carIndex;

  const CarDetailPage({Key? key, required this.car, required this.carIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          car['name'],
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(car['image'], width: double.infinity, height: 200, fit: BoxFit.contain),
              ),
              SizedBox(height: 16),
              Text('Detail Mobil', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text('Nama: ${car['name']}', style: TextStyle(fontSize: 18, color: Colors.grey[800])),
              Text('Model: ${car['model']}', style: TextStyle(fontSize: 18, color: Colors.grey[800])),
              Text('Tahun: ${car['year']}', style: TextStyle(fontSize: 18, color: Colors.grey[800])),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderPage(car: car)),
                  );
                },
                child: Text('Pesan Sekarang'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
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