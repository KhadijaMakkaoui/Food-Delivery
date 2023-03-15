import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  late Stream<QuerySnapshot> _ordersStream;

  @override
  void initState() {
    super.initState();
    _ordersStream = FirebaseFirestore.instance.collection('orders').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _ordersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final List<QueryDocumentSnapshot>? documents = snapshot.data?.docs;
          if (documents == null || documents.isEmpty) {
            return Center(child: Text('No orders found'));
          }

          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (BuildContext context, int index) {
              final Map<String, dynamic>? data = documents[index].data() as Map<String, dynamic>?;
              if (data == null) {
                return SizedBox();
              }

              final String orderId = documents[index].id;
              final String date = (data['date'] as Timestamp).toDate().toString();
              final List<dynamic>? items = data['items'];
              final int? totalPrice = data['total'];

              return ListTile(
                title: Text('Order $orderId'),
                subtitle: Text('Date: $date'),
                trailing: Text('Total:'+ totalPrice.toString() + 'DH'),
                onTap: () {
                 /* Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => OrderDetailsPage(
                        orderId: orderId,
                        items: items?.map((item) => Food.fromMap(item)).toList(),
                      ),
                    ),
                  );*/
                },
              );
            },
          );
        },
      ),
    );
  }
}
