// import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projekakhir_tpm/helper/shared_preference.dart';
import 'package:projekakhir_tpm/view/product_detail.dart';

import '../login_page.dart';

class FoundationCategory extends StatefulWidget {
  const FoundationCategory({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _FoundationCategoryState createState() => _FoundationCategoryState();
}

class _FoundationCategoryState extends State<FoundationCategory> {
  List home = [];
  bool load = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchHome();
  }

  fetchHome() async {
    setState(() {
      load = true;
    });
    var url =
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=revlon&&product_type=foundation";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List items = (json.decode(response.body) as List)
      //     // .map((data) => ProductDetail.)
          .toList();

      // var items = json.decode(response.body)['results'];
      setState(() {
        home = items;
        load = false;
      });
    } else {
      setState(() {
        home = [];
        load = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Flawless Face"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      body: getBody(),
    );
  }

  Widget getBody() {
    // ignore: prefer_is_empty
    if (home.contains(null) || home.length < 0 || load) {
      return Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.blueGrey),
          ));
    }
    return ListView.builder(
        itemCount: home.length,
        itemBuilder: (context, index) {
          return getCard(home[index]);
        });
  }

  Widget getCard(item) {

    var id = item['id'];
    var title = item['name'];
    var thumbnail = item['image_link'];
    var shortDescription =item['description'];
    var price = item['price'];
    var productType = item['product_type'];
    // var publisher = item['publisher'];

    return Card(
        margin: const EdgeInsets.all(10),
        child: InkWell(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProductDetail(id : id, title : title,  thumbnail: thumbnail,short_description: shortDescription,price: price, product_type: productType,
                // genre: genre, platform: platform,publisher: publisher,
              ))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(thumbnail.toString()),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title.toString(),
                          style: const TextStyle(fontWeight: FontWeight.w700)),
                      const SizedBox(height: 5),
                      Text(
                        "Type : $productType",
                        style: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}