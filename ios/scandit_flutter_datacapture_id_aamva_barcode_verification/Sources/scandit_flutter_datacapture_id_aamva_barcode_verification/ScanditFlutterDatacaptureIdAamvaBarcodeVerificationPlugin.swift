import Flutter
import UIKit

public class ScanditFlutterDatacaptureIdAamvaBarcodeVerificationPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = ScanditFlutterDatacaptureIdAamvaBarcodeVerificationPlugin()
        registrar.publish(instance)
    }
}
