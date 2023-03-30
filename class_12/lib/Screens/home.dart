// ignore_for_file: avoid_print, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/strings.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            width: MediaQuery.of(context).size.width / 375.0 * 335,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              // onChanged: (value) => print(value),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 375.0 * 20,
                    vertical: MediaQuery.of(context).size.width / 375.0 * 9,
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Search product",
                  prefixIcon: const Icon(Icons.search)),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => print("Cart"),
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    goodmorning,
                    style: goodmorningStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: const [
                  Text(
                    msg,
                    style: msgstyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: const [
                    ReusedBox(),
                    SizedBox(
                      width: 10,
                    ),
                    ReusedBox(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "New",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisExtent: 10,
                  crossAxisSpacing: 10),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                var product = false;

                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 375.0 * 10,
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width / 375.0 * 20,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1675573789887-5c0756764df4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=681&q=80"))),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Laptop",
                            style: const TextStyle(color: Colors.black),
                            maxLines: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$ 200",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width /
                                      375.0 *
                                      18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange,
                                ),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(50),
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width /
                                        375.0 *
                                        8,
                                  ),
                                  height: MediaQuery.of(context).size.width /
                                      375.0 *
                                      28,
                                  width: MediaQuery.of(context).size.width /
                                      375.0 *
                                      28,
                                  decoration: BoxDecoration(
                                    // color: product.isFavourite
                                    //     ? Colors.orange.withOpacity(0.15)
                                    //     : Colors.orange.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    // color: product.isFavourite
                                    //     ? const Color(0xFFFF4848)
                                    //     : const Color(0xFFDBDEE4),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class ReusedBox extends StatelessWidget {
  const ReusedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15, bottom: 5),
                child: Text("Accesserioes", style: boxTextstyle),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, bottom: 5, right: 30),
                child: Text(
                  "Up to 50%",
                  style: boxTextstyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Center(
                    child: Text("Shop Now"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
