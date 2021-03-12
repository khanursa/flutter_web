import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'Desktop/home/provider/homepageprovider.dart';

class MultiProviderApp {
  static final general = <SingleChildWidget>[
    ChangeNotifierProvider(create: (context) => HomePageProvider())
  ];
}
