import 'package:flutter/material.dart';
import 'car_detail_page.dart';

class CarListPage extends StatefulWidget {
  const CarListPage({super.key});

  @override
  _CarListPageState createState() => _CarListPageState();
}

class _CarListPageState extends State<CarListPage> {
  final List<Map<String, dynamic>> cars = [
    {'name': 'Toyota Avanza', 'model': 'Avanza', 'year': 2020, 'image': 'assets/images/car1.jpeg', 'pricePerDay': 500000}, // Harga sewa per hari
    {'name': 'Honda Civic', 'model': 'Civic', 'year': 2019, 'image': 'assets/images/car2.jpeg', 'pricePerDay': 400000}, // Harga sewa per hari
    {'name': 'Suzuki Swift', 'model': 'Swift', 'year': 2018, 'image': 'assets/images/car3.jpeg', 'pricePerDay': 300000}, // Harga sewa per hari
    {'name': 'Mitsubishi Expander', 'model': 'Expander', 'year': 2024, 'image': 'assets/images/car4.jpeg', 'pricePerDay': 600000}, // Harga sewa per hari
    {'name': 'Daihatsu Ayla', 'model': 'Ayla', 'year': 2019, 'image': 'assets/images/car5.jpg', 'pricePerDay': 350000}, // Harga sewa per hari
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daftar Mobil',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(car['image'], width: 80, height: 80, fit: BoxFit.cover),
                ),
                title: Text(
                  car['name'],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '${car['model']} - ${car['year']} - Rp ${car['pricePerDay']} / hari', // Menampilkan harga sewa per hari
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarDetailPage(car: car, carIndex: index)),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}