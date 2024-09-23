import 'package:flutter/material.dart';
import 'package:flutter_demo/Favorite/widget/favorite_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 33),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
                color: Colors.black,
              ),
              const SizedBox(width: 110),
              const Text(
                "Favorite",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(
              //     Icons.card_travel,
              //   ),
              //   color: Colors.black,
              // ),
            ],
          ),
          const SizedBox(height: 6),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "5 Favorites",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: SizedBox(
              height: 761,
              child: SingleChildScrollView(
                // controller: ScrollController(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    FavoriteItem(),
                    FavoriteItem(),
                    FavoriteItem(),
                    FavoriteItem(),
                    FavoriteItem(),
                    FavoriteItem(),
                    FavoriteItem(),
                    FavoriteItem(),
                    FavoriteItem(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
