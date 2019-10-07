# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'Finances' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'Valet'
  pod 'IQKeyboardManagerSwift'

  # Pods for Finances

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
      config.build_settings['SWIFT_VERSION'] = '5.0'
    end
  end
end
