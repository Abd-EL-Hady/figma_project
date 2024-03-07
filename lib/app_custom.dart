import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App_customs extends StatelessWidget {
  const App_customs({
    super.key,
    required this.text,
    required this.onpressed,
    this.color,
    this.cbottom,
    this.size,
    this.redius,
  });
  final String text;
  final Function() onpressed;
  final Color? color;
  final Color? cbottom;
  final double? size;
  final double? redius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: cbottom,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(redius!)),
      ),
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons(
      {super.key,
      required this.text,
      required this.onpressed,
      this.color,
      this.size});
  final String text;
  final Function() onpressed;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: size),
        ));
  }
}

class Listview extends StatelessWidget {
  const Listview(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      this.icon,
      this.buttomicon1,
      this.buttomicon2,
      required this.text,
      required this.onPressed1,
      required this.onPressed2});
  final String title;
  final String subtitle;
  final String image;
  final IconData? icon;
  final IconData? buttomicon1;
  final IconData? buttomicon2;
  final String text;
  final Function() onPressed1;
  final Function() onPressed2;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle),
          const SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: FloatingActionButton.small(
                    onPressed: onPressed1,
                    child: Icon(
                      buttomicon1,
                      size: 20,
                    )),
              ),
              const SizedBox(width: 15),
              Text(text),
              const SizedBox(width: 15),
              SizedBox(
                height: 30,
                width: 30,
                child: FloatingActionButton.small(
                    onPressed: onPressed2,
                    child: Icon(
                      buttomicon2,
                      size: 20,
                    )),
              ),
            ],
          )
        ],
      ),
      leading: Image(
        image: AssetImage(image),
        fit: BoxFit.fill,
      ),
      trailing: Icon(icon),
    );
  }
}
