import 'package:feedpage/providers/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class StaggeredProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FeedModel>(
      builder: (context, model, child) => StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: model.products.length,
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Hero(
                          tag: index,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: FadeInImage(
                                    width: MediaQuery.of(context).size.width,
                                    image: NetworkImage(model.products[index]
                                        .image), // NetworkImage(staticData[index].images),
                                    fit: BoxFit.cover,
                                    placeholder: AssetImage(
                                        "assets/images/app_logo.png"),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20))),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.black54,
                                        size: 25,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.products[index].name,
                              style: TextStyle(
                                  wordSpacing: 1,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                model.products[index].description,
                                style: TextStyle(
                                  wordSpacing: 1,
                                  fontSize: 15,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    model.products[index].price.toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    //
                  }));
        },
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(2, index.isEven ? 3 : 3.5),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
