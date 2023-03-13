import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class RestoService extends StatefulWidget {
  const RestoService({Key? key}) : super(key: key);

  @override
  State<RestoService> createState() => _RestoServiceState();

  Future createRestaurant({required String label,required String name,required String waitTime,required String distance ,required String logoUrl,required String desc,required String score}) async {
    final docResto=FirebaseFirestore.instance.collection('restaurants').doc(label);
    final json={
      'label':label,
      'name':name,
      'waitTime':waitTime,
      'distance':distance,
      'logoUrl':logoUrl,
      'desc':desc,
      'score':score,
    };
    await docResto.set(json);
  }

}

class _RestoServiceState extends State<RestoService> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
