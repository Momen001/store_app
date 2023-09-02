import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/prodect_model.dart';
import 'package:store_app/widgets/textfield.dart';

import '../services/update_prodect.dart';
import '../widgets/custom_buttom.dart';

// ignore: must_be_immutable
class updatepage extends StatefulWidget {
  updatepage({super.key});

  static String id = 'updatepage';

  @override
  State<updatepage> createState() => _updatepageState();
}

class _updatepageState extends State<updatepage> {
  String? prodectname, description, image, price;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    prodectModel prodect =
        ModalRoute.of(context)!.settings.arguments as prodectModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'update page',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onChanged: (data) {
                    prodectname = data;
                  },
                  hintText: 'prodect name ',
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'price ',
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image ',
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  onChanged: (data) {
                    description = data;
                  },
                  hintText: 'description ',
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButon(
                  text: 'update',
                  onTap: () async {
                    isloading = true;
                    setState(() {});
                    try {
                      await update(prodect);
                      print('success');
                    } catch (e) {
                      print(e.toString());
                    }
                    isloading = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> update(prodectModel prodect) async {
    await UpdateProductService().updateProduct(
        id: prodect.id,
        title: prodectname == null ? prodect.title : prodectname!,
        price: price == null ? prodect.price.toString() : price!,
        desc: description == null ? prodect.description : description!,
        image: image == null ? prodect.image : image!,
        category: prodect.category);
  }
}
