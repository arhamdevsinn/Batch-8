import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProductCardScreen extends StatelessWidget {
  const ProductCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: s.width < 475 ? 5 : 50, vertical: 20),
        child: GridView.builder(
          itemCount: 100,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: s.width < 1050
                  ? s.width <= 862
                      ? 2
                      : 4
                  : 6,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              childAspectRatio: 0.6),
          itemBuilder: (context, index) {
            return InkWell(
              // hoverColor: Colors.red,

              onTap: () {},
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset(
                      "arham/car.jpg",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Selling Car asjdhakldjaksdjlkasdjkahklddhaskjdhkajshdkjahdkjdahskjdhaskjdhakjsdhjkahdkjhjakhdjkashdkhasjkdhajkdhajkdhajkdhjkadashdkahdjkahdjkashdjkahsdkjahdkjahdkjhaskjdhajkdhajksdhakjsdhkjasdhkahdkjashdkjasdhjk",
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                                fontSize: s.width < 380 ? 10 : 15),
                          ),
                          const Row(
                            children: [
                              Text(
                                "Rs.280",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "-44%",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Lottie.asset('arham/star.json', height: 30),
                              // Icon(Icons.star, color: Colors.amber, size: 15,),
                              // Icon(Icons.star, color: Colors.amber, size: 15,),
                              // Icon(Icons.star, color: Colors.amber, size: 15,),
                              // Icon(Icons.star, color: Colors.amber, size: 15,),
                              // Icon(Icons.star, color: Colors.amber, size: 15,),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(180)",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
