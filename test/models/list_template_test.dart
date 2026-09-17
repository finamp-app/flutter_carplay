import 'package:flutter_carplay/flutter_carplay.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CPListTemplate', () {
    test('serializes trailing navigation bar buttons', () {
      final template = CPListTemplate(
        id: '<template>',
        title: 'Radio',
        sections: [],
        trailingNavigationBarButtons: [
          CPBarButton(id: '<button>', title: 'Start Radio', onPress: () {}),
        ],
      );

      expect(template.toJson()['trailingNavigationBarButtons'], [
        {
          '_elementId': '<button>',
          'title': 'Start Radio',
          'buttonStyle': 'rounded',
          'runtimeType': 'FCPBarButton',
        },
      ]);
    });

    test('serializes null trailing navigation bar buttons when unset', () {
      final template = CPListTemplate(id: '<template>', sections: []);

      expect(template.toJson()['trailingNavigationBarButtons'], isNull);
    });
  });
}
