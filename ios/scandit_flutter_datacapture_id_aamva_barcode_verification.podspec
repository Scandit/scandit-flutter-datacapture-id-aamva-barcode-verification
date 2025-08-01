require "yaml"

pubspec = YAML.load_file(File.join("..", "pubspec.yaml"))

Pod::Spec.new do |s|
  s.name                    = pubspec["name"]
  s.version                 = pubspec["version"]
  s.summary                 = pubspec["description"]
  s.homepage                = pubspec["homepage"]
  s.license                 = { :file => "../LICENSE" }
  s.author                  = { "Scandit" => "support@scandit.com" }
  s.platforms               = { :ios => "13.0" }
  s.source                  = { :path => "." }
  s.swift_version           = "5.0"
  s.source_files            = "Classes/**/*.{h,m,swift}"
  s.requires_arc            = true
  s.dependency 'ScanditIdAamvaBarcodeVerification', '= 6.28.6'

  s.dependency "Flutter"

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { "DEFINES_MODULE" => "YES", "VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
end
