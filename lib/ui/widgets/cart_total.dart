import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  final ShoppingController shoppingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        //TODO
        // aquí debemos observar la variable total del shoppingController
        child: Obx(
          () => Text("Total:" + shoppingController.total.toString() + " usd",
              style: const TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 66, 89, 101),
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
