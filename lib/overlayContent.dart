import 'package:flutter/material.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class OverlayContent extends StatefulWidget {
  @override
  _OverlayContentState createState() => _OverlayContentState();
}

class _OverlayContentState extends State<OverlayContent> {
  // String _topModalData = '';

  // Future<void> _showTopModal(BuildContext context) async {
  //   final value = await showTopModalSheet<String?>(
  //     context,
  //     const DummyModal(),
  //     backgroundColor: Colors.white,
  //     borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
  //   );

  //   if (value != null) setState(() => _topModalData = value);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Adjust yourself',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          // ElevatedButton(
          //   onPressed: () => _showTopModal(context),
          //   child: Text('Show Top Modal'),
          // ),
          // if (_topModalData.isNotEmpty)
          //   Text(
          //     'Selected: $_topModalData',
          //     style: TextStyle(color: Colors.white),
          //   ),
        ],
      ),
    );
  }
}

// class DummyModal extends StatelessWidget {
//   const DummyModal({Key? key}) : super(key: key);

//   static const _values = ["CF Cruz Azul", "Monarcas FC"];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           const Text(
//             "Choose Wisely",
//             style: TextStyle(color: Colors.teal, fontSize: 20),
//             textAlign: TextAlign.center,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children:
//                 _values
//                     .map(
//                       (value) => Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 10, right: 5),
//                           child: OutlinedButton(
//                             child: Column(
//                               children: [
//                                 FlutterLogo(
//                                   size:
//                                       MediaQuery.of(context).size.height * .15,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                     vertical: 2,
//                                   ),
//                                   child: Text(value),
//                                 ),
//                               ],
//                             ),
//                             onPressed: () => Navigator.pop(context, value),
//                           ),
//                         ),
//                       ),
//                     )
//                     .toList(),
//           ),
//           const SizedBox(height: 16),
//         ],
//       ),
//     );
//   }
// }
