import 'package:flutter/material.dart';

class Demo0 extends StatelessWidget {
  const Demo0({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> bgImagesWithText = [
      {
        "img":
        "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb",
        "text": "Nature - Mountains"
      },
      {
        "img": "https://images.unsplash.com/photo-1540206395-68808572332f",
        "text": "Abstract Gradient"
      },
      {
        "img": "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
        "text": "Cityscape - Skyline at night"
      },
      {
        "img":
        "https://images.pexels.com/photos/276092/pexels-photo-276092.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Minimalist - Clean gradient"
      },
      {
        "img": "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3",
        "text": "Space - Galaxy"
      },
      {
        "img":
        "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Ocean - Waves"
      },
      {
        "img":
        "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Forest - Nature"
      },
      {
        "img":
        "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Urban - Street"
      },
      {
        "img":
        "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Texture - Wooden"
      },
      {
        "img": "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa",
        "text": "Sunset - Serene beach"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,childAspectRatio: 2 ),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: Text("Text 1", style: TextStyle(fontSize: 200),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: Text("Text 1", style: TextStyle(fontSize: 200),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: Text("Text 1", style: TextStyle(fontSize: 200),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: Text("Text 1", style: TextStyle(fontSize: 200),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: Text("Text 1", style: TextStyle(fontSize: 200),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                  child: Text("Text 1", style: TextStyle(fontSize: 200),)),
            ),
          ],
        ),
      ),
    );
  }
}
