import 'package:flutter/material.dart';

class ReceiptPage extends StatelessWidget {
  final Map<String, dynamic> car;
  final String name;
  final String phone;
  final String address;
  final String rentalDuration;

  const ReceiptPage({
    Key? key,
    required this.car,
    required this.name,
    required this.phone,
    required this.address,
    required this.rentalDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int duration = int.parse(rentalDuration);
    final int totalCost = (duration * car['pricePerDay']).toInt();

    return Scaffold(
      appBar: AppBar(
        title: Text('Resi Pemesanan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Resi Pemesanan',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(thickness: 2),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Nama'),
                  subtitle: Text(name),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Nomor Telepon'),
                  subtitle: Text(phone),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Alamat'),
                  subtitle: Text(address),
                ),
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text('Lama Sewa'),
                  subtitle: Text('$rentalDuration hari'),
                ),
                ListTile(
                  leading: Icon(Icons.directions_car),
                  title: Text('Mobil'),
                  subtitle: Text(car['name']),
                ),
                ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text('Total Biaya'),
                  subtitle: Text('Rp $totalCost'),
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.home),
                    label: Text('Kembali ke Beranda'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}