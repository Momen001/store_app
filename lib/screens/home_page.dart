import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/prodect_model.dart';
import 'package:store_app/services/get_all_prodect.dart';
import 'package:store_app/widgets/cart.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  static String id = 'homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.cartPlus, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'my store',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
        child: FutureBuilder<List<prodectModel>>(
            future: allprodectservice().getallprodect(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<prodectModel> prodects = snapshot.data!;
                return GridView.builder(
                  itemCount: prodects.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 50),
                  itemBuilder: (context, index) {
                    return customcard(
                      prodect: prodects[index],
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
