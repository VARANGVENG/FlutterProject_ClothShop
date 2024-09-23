import 'package:flutter/material.dart';
import 'package:flutter_demo/Detail/Detail_screen.dart';
import 'package:flutter_demo/Model/collection.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: SizedBox(
          height: 350,
          width: double.infinity,
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            // shrinkWrap: true,
            itemCount: collections.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 6,
              crossAxisSpacing: 7,
              childAspectRatio: 0.60,
            ),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    // height: 222,
                    // width: 180,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "AIR JORDAN RETRO",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.8,
                          ),
                        ),
                        Text(
                          "\$1000",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(collections[index].image),
                        ),
                        color: const Color.fromARGB(89, 158, 158, 158),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 10,
                    top: 10,
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
