package ru.karabanovbs.places

import io.flutter.embedding.android.FlutterActivity
import com.yandex.mapkit.MapKitFactory;
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("d4e8596c-4878-4f3f-baf6-f4c23e3d9e40")
        super.configureFlutterEngine(flutterEngine)
    }
}
