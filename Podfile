# Uncomment the next line to define a global platform for your project
 platform :ios, '9.0'

source 'https://github.com/CocoaPods/Specs.git'

workspace 'RXTestSDK.xcworkspace'

target 'RXTestSDKDemo' do
  # 这里是 demo 项目需要依赖的三方库
  project 'RXTestSDKDemo/RXTestSDKDemo.xcodeproj'
  pod 'Masonry'
  use_frameworks!
end

target 'RXTestSDK' do
   project 'RXTestSDK.xcodeproj'
  # 这里是 sdk 项目需要依赖的三方库
  # Pods for RXTestSDK
  use_frameworks!

end
