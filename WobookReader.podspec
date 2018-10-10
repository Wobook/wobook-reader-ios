Pod::Spec.new do |spec|  
    spec.name                       = 'WobookReader'
    spec.version                    = '1.1.3'
    spec.summary                    = 'An incredible reading experience'
    spec.license                    = { :type => 'Commercial', :text => <<-LICENSE
                                        © 2018 Wobook. All rights reserved.
                                        LICENSE
                                       }
    spec.author                     = { 'Loïc Lavergne' => 'llavergne@holdingvm.com' }

    spec.homepage                   = 'https://www.wobook.com'

    spec.source                     = { :http => 'https://github.com/Wobook/wobook-reader-ios/releases/download/v1.1.3-ios/WobookReader-1.1.3-ios.zip' }

    spec.swift_version              = '4.2'
    spec.platform                   = :ios
    spec.ios.deployment_target      = '11.0'
    spec.ios.vendored_frameworks    = 'WobookReader.framework'

    spec.dependency 'Alamofire', '~> 4.7'
    spec.dependency 'AlamofireImage', '~> 3.3'
end
