Pod::Spec.new do |s|
  s.name             = 'iKalaTracker'
  s.version          = '0.0.1'
  s.summary          = 'iKala Tracker'

  s.description      = 'A SDK to tracker what user do for analysis.'

  s.homepage         = 'https://big-data-lake.github.io/BDL-document/'
  s.license      = { :type => "Copyright", :text => "Copyright (c) 2020 StraaS.io. All rights reserved." }
  s.author           = 'iKala'
  s.source           = { :git => 'https://github.com/iKala-Data-Lake/iOS-Tracking-SDK', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.vendored_frameworks = "lib/iKalaTracker.framework"
  
  s.resource_bundles = {
    'iKalaDB' => ['lib/iKalaDB.xcdatamodeld']
  }

  s.frameworks = 'UIKit'
end