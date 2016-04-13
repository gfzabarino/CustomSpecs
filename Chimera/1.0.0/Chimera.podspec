Pod::Spec.new do |s|
  s.default_subspec = 'UIImageView'
  s.name             = "Chimera"
  s.version          = "1.0.0"
  s.summary          = "A shared library for TAL and Circolo"

  s.description      = <<-DESC
  This is a shared set of resources between The Appraisal Lane iOS
  applications and Circolo.  Any abstractable functionality should
  be placed in here for sharing between the two projects.
                       DESC

  s.homepage         = "https://github.com/theappraisallane/chimera"
  s.license          = 'MIT'
  s.author           = { "Alex Lindblad" => "alex@theappraisallane.com" }
  s.source           = { :git => "https://github.com/theappraisallane/chimera.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.subspec 'Core' do |ss|
    ss.source_files = 'Pod/Classes/**/*.{h,m}'
    ss.exclude_files = 'Pod/Classes/UIImageView+{Chimera,Downloading}.{h,m}', 'Pod/Classes/Views/CHPictureSliderCollectionView.{h,m}'
    ss.resource_bundles = {
      'Chimera' => ['Pod/Assets/*.png']
    }
    ss.resources = ['Pod/Assets/*.plist', 'Pod/Classes/**/*.{xib, plist}']

    ss.frameworks = ['UIKit', 'CoreData']
    ss.dependency 'SDWebImage', '~> 3.7'
    ss.dependency 'MagicalRecord', '~> 2.3'
    ss.dependency 'MBProgressHUD', '~> 0.9'
    ss.dependency 'YLMoment', '~> 0.2.0'
    ss.dependency 'CJAMacros'
    ss.dependency 'Mantle', '~> 1.4.1'
    ss.dependency 'UIImage-Resize', '~> 1.0.1'
    ss.dependency 'YYCategories', '1.0.1.custom'
    ss.dependency 'MAObjCRuntime', '1.0.0.custom'
    ss.dependency 'FormatterKit/TimeIntervalFormatter', '~> 1.8.0'
    ss.dependency 'FontAwesome+iOS', '0.0.1.custom'
  end
  s.subspec 'UIImageView' do |ss|
    ss.source_files = 'Pod/Classes/UIImageView+Chimera.{h,m}', 'Pod/Classes/Views/CHPictureSliderCollectionView.{h,m}'
    ss.dependency 'Chimera/Core'
  end
  s.subspec 'UIImageViewAdvancedCaching' do |ss|
    ss.source_files = 'Pod/Classes/UIImageView+Downloading.{h,m}'
    ss.dependency 'Chimera/Core'
  end
end
