import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://images.pexels.com/photos/214574/pexels-photo-214574.jpeg?auto=compress&cs=tinysrgb&w=600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)),
                      child: const Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.locationPin,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4 km away",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const FaIcon(FontAwesomeIcons.heart,
                          color: Colors.orange),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.black45,
                  // borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          RichText(
                              text: const TextSpan(
                                  text: "Eliza Will ms",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.white),
                                  children: [
                                TextSpan(
                                  text: "24",
                                ),
                              ])),
                          const SizedBox(width: 5),
                          const FaIcon(
                            FontAwesomeIcons.angleDoubleDown,
                            size: 22,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.locationPin,
                            size: 18,
                            color: Colors.orange,
                          ),
                          const SizedBox(width: 5),
                          RichText(
                              text: const TextSpan(
                                  text: "Chenni,",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.white),
                                  children: [
                                TextSpan(
                                  text: "India",
                                ),
                              ])),
                          const SizedBox(width: 5),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: 10,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const FaIcon(FontAwesomeIcons.bookBookmark,
                      color: Colors.orange),
                ))
          ],
        ),
      ),
    );
  }
}
