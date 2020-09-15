import 'package:feedpage/providers/feed_model.dart';
import 'package:feedpage/widgets/staggered_grid_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // Column(
        //   children: [
        //     Row(
        //       children: [
        //         Flexible(
        //           child: TextField(
        //             decoration: InputDecoration(
        //               hintText: 'Search here',
        //               prefixIcon: Icon(Icons.search),
        //               border: InputBorder.none,
        //               filled: true,
        //             ),
        //           ),
        //         ),
        //         IconButton(
        //           icon: Icon(
        //             Icons.shopping_cart,
        //             color: Colors.orange,
        //           ),
        //           onPressed: () {},
        //         ),
        //       ],
        //     ),
        // ListView.builder(itemBuilder: (context, index)=>)
        StaggeredProducts();
    //     ],
    // }
  }
}
