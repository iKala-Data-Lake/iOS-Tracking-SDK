Pod::Spec.new do |s|
  s.name             = 'iKalaTracker'
  s.version          = '0.1.0'
  s.summary          = 'iKala Tracker'

  s.description      = 'iKala Tracker'

  s.homepage         = 'https://big-data-lake.github.io/BDL-document/'
  s.license      = { :type => "Copyright", :text => "Copyright (c) 2020 StraaS.io. All rights reserved." }
  s.author           = 'iKala'
  s.source           = { :git => 'https://github.com/allenlinli@gmail.com/bdl-ios-sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'iKalaTracker/Classes/**/*'
  
  s.resource_bundles = {
    'iKalaDB' => ['iKalaTracker/iKalaDB.xcdatamodeld']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
