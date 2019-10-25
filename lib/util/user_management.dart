import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_my_chat/constants/myconstants.dart';
import 'package:flutter_my_chat/util/state_widget.dart';

import 'no_rights.dart';

class UserManagement {
  authoriseAccess(BuildContext context) async {
    FirebaseAuth.instance.currentUser().then((user) {
      Firestore.instance.document("users/${user.uid}").get().then((doc) {
        if (doc.exists) {
          if (doc.data['role'] == PropaneConstants.CONTROLLER) {
//            Navigator.of(context).push(
//                MaterialPageRoute(builder: (BuildContext context)=>new ViewController()));
          } else if (doc.data['role'] ==
              PropaneConstants.SALES_PERSON_WHOLESALE) {
//            Navigator.of(context).push(
//                MaterialPageRoute(builder: (BuildContext context)=>new ViewMySales()));
          } else {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => new NoRightsPage()));
          }
        }
      });
    });
  }

  signOut(BuildContext context) {
    StateWidget.of(context).logOutUser();
  }
}
