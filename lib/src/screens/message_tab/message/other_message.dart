import 'package:flutter/material.dart';
import 'package:study_flutter_v158/src/components/message/message_model.dart';
import 'package:study_flutter_v158/src/shared/widgets/image_cached.dart';

class OtherMessage extends StatelessWidget {
  final MessageModel message;

  const OtherMessage({@required this.message}) : assert(message != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImageCached(
        url: this.message.userImagePath,
        width: 50,
        height: 50,
      ),
      title: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(right: 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                this.message.message,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  this.message.time,
                  style: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
