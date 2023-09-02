import 'package:flutter/material.dart';
import 'package:store_app/models/prodect_model.dart';
import 'package:store_app/screens/update_page.dart';

// ignore: must_be_immutable
class customcard extends StatelessWidget {
  customcard({
    required this.prodect,
    super.key,
  });
  prodectModel prodect;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, updatepage.id, arguments: prodect);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 20,
                offset: Offset(10, 10),
              ),
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      prodect.title.substring(0, 10),
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${prodect.price.toString()}',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          Icon(Icons.favorite)
                        ])
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -60,
            child: Image.network(
              prodect.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
