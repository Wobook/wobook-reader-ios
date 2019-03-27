Pod::Spec.new do |spec|
    spec.name                       = 'WobookReader'
    spec.version                    = '2.5.1'
    spec.summary                    = 'An incredible reading experience'
    spec.license                    = { :type => 'Commercial', :text => <<-LICENSE
                                        © 2019 Viapresse. All rights reserved.
                                        LICENSE
                                      }
    spec.author                     = { 'Loïc Lavergne' => 'llavergne@viapresse.com' }

    spec.homepage                   = 'https://www.wobook.com/'
    spec.documentation              = 'https://github.com/Wobook/wobook-reader-ios/blob/master/README.md'

    spec.source                     = { :http => 'https://github.com/Wobook/wobook-reader-ios/releases/download/v2.5.1-ios/WobookReader-2.5.1.zip' }

    spec.swift_version              = '5.0'
    spec.platform                   = :ios
    spec.ios.deployment_target      = '11.0'
    spec.ios.vendored_frameworks    = 'WobookReader.framework'
end
