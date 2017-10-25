platform :ios, '10.0'
swift_version = '3.2'

target 'reswift.nimblesnapshot.net' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'SwinjectStoryboard'
  pod 'ReSwift'

  # Pods for reswift.nimblesnapshot.net

  target 'reswift.nimblesnapshot.netTests' do
    inherit! :search_paths
    pod 'Quick'
    pod 'Nimble'
    pod 'Nimble-Snapshots'
    pod 'AsyncSwift'
  end
  
  target 'reswift.nimblesnapshot.netUITests' do
    inherit! :search_paths
    # Pods for testing
  end

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.new_shell_script_build_phase.shell_script = "mkdir -p $PODS_CONFIGURATION_BUILD_DIR/#{target.name}"
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '3.2'
        config.build_settings['CONFIGURATION_BUILD_DIR'] = '$PODS_CONFIGURATION_BUILD_DIR'
      end
  
      if ['SwiftDate', 'Tabman', 'Pageboy', 'Lightbox', 'Hue', 'Imaginary'].include? target.name
        target.build_configurations.each do |config|
          config.build_settings['SWIFT_VERSION'] = '4.0'
        end
      end
    end
  end
end
