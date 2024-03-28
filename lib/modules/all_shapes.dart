import 'package:flutter/material.dart';
import 'package:image_editor_plus/data/layer.dart';
import 'package:image_editor_plus/data/shapes_data.dart';
import 'package:image_editor_plus/image_editor_plus.dart';

class Shapes extends StatefulWidget {
  const Shapes({super.key});

  @override
  createState() => _ShapesState();
}

class _ShapesState extends State<Shapes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(0.0),
        height: 400,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10.9,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                i18n('Select Shape'),
                style: const TextStyle(color: Colors.white),
              ),
            ]),
            const SizedBox(height: 16),
            Container(
              height: 315,
              padding: const EdgeInsets.all(0.0),
              child: GridView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 0.0,
                  maxCrossAxisExtent: 60.0,
                ),
                children: shapes.map((String shape) {
                  return GridTile(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        ShapeLayerData(
                          text: shape,
                          size: 32.0,
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      child: Text(
                        shape,
                        style: const TextStyle(fontSize: 35),
                      ),
                    ),
                  ));
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
