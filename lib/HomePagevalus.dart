// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'card.dart';

class ContainerBox extends StatelessWidget {
  const ContainerBox({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Cardview(
          url:
              'https://4.bp.blogspot.com/-ol63WvGTVHM/VaNCZpoWqjI/AAAAAAAAAgg/YxG1IwF8BuM/s1600/31.jpg ',
          price: '\$ 50',
          title: 'Holiday Inn Bengaluru',
          Sub_title: 'Bangalore, Karnataka',
          review: '(200 Reviews)',
        ),
        Cardview(
          url:
              'https://th.bing.com/th/id/OIP.3Pb3RwfydbELK7hxYcfwTQHaFu?pid=ImgDet&rs=1',
          price: '\$ 40',
          title: 'Hotel Diggi Palace',
          Sub_title: 'Shivaji Marg, C Scheme, Jaipur',
          review: '(120 Reviews)',
        ),
        Cardview(
          url:
              'https://media-cdn.tripadvisor.com/media/vr-splice-j/06/fd/64/2f.jpg',
          price: '\$ 20',
          title: 'Suites Jaipur Gopalpura',
          Sub_title: 'Holiday Inn Express',
          review: '(80 Reviews)',
        ),
        Cardview(
          url:
              'https://images.pexels.com/photos/189333/pexels-photo-189333.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          price: '\$ 10',
          title: 'Suites Private Villas',
          Sub_title: 'Holiday with Tripygo',
          review: '(120 Reviews)',
        ),
        Cardview(
          url:
              'https://images.pexels.com/photos/1838554/pexels-photo-1838554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          price: '\$ 10',
          title: 'Suites Private Villas',
          Sub_title: 'Holiday with Tripygo',
          review: '(120 Reviews)',
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Icon iconname;
  final String name;
  final Color clr;

  ItemCard({
    required this.iconname,
    required this.name,
    required this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: clr,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          iconname,
          Text(name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}

class ItemValues extends StatelessWidget {
  const ItemValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemCard(
            iconname: Icon(
              Icons.hotel,
              color: Colors.white,
            ),
            clr: Color.fromARGB(255, 255, 0, 96),
            name: 'Hotel',
          ),
          SizedBox(
            width: 15,
          ),
          ItemCard(
            iconname: Icon(
              Icons.restaurant,
              color: Colors.white,
            ),
            clr: Color.fromARGB(255, 0, 152, 251),
            name: 'Restaurant',
          ),
          SizedBox(
            width: 15,
          ),
          ItemCard(
            iconname: Icon(
              Icons.local_cafe,
              color: Colors.white,
            ),
            clr: Color.fromARGB(255, 255, 144, 0),
            name: 'Cafe',
          ),
        ],
      ),
    );
  }
}
