
Pod::Spec.new do |spec|

  spec.name         = "EjuHKSDK"
  spec.version      = "1.4.3"
  spec.summary      = "EjuHKSDK."
  spec.description  = <<-DESC
    Eju 报事报修、投诉表扬SDK 。
                   DESC

  spec.homepage     = "https://github.com/fanefane/ejuspec"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Fane" => "faneyoung@126.com" }
  spec.platform     = :ios, "10.0"

  spec.source           = { :git => 'https://github.com/fanefane/ejuspec.git', :tag => spec.version.to_s }
  spec.vendored_frameworks = 'EjuHKSDK.framework'
  spec.requires_arc = true

  spec.subspec 'Public' do |ss|
    ss.public_header_files = [
    'EjuHKSDK.framework/Public/*.h',
    'EjuHKSDK.framework/Public/**/*.h',
    'EjuHKSDK.framework/Public/**/**/*.h',
    ]
  end
  
  spec.subspec 'ReportModule' do |rm|
      rm.public_header_files = 'EjuHKSDK.framework/ReportModule/**/*.h'
  end
  
  spec.subspec 'ComplainPraise' do |cp|
      cp.dependency 'EjuHKSDK/ReportModule'
      cp.public_header_files = 'EjuHKSDK.framework/ComplainPraise/**/*.h'
  end

  #资源
  spec.resources = [
    'EjuHKSDK.framework/*.{bundle,car}'
  ]

  spec.dependency 'AFNetworking'
  spec.dependency 'WMPageController'
  spec.dependency 'AFNetworking'
  spec.dependency 'SDWebImage'
  spec.dependency 'YYModel'
  spec.dependency 'MJRefresh'
  spec.dependency 'Masonry'
  spec.dependency 'MBProgressHUD'
  spec.dependency 'KVOController'
  spec.dependency 'extobjc'
  spec.dependency 'IQKeyboardManager'
  spec.dependency 'EasyShowView'
  spec.dependency 'DZNEmptyDataSet'
  spec.dependency 'dsBridge'
  spec.dependency 'OpenUDID'
  
end
