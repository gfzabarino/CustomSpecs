Pod::Spec.new do |s|
	s.name					= 'MAObjCRuntime'
	s.version				= '1.0.0.custom'
	s.summary				= 'MAObjCRuntime is an ObjC wrapper around the Objective-C runtime APIs.'
	s.homepage				= 'https://github.com/mikeash/MAObjCRuntime'
	s.license				= 'MIT'
	s.author				= { 'Mike Ash' => 'mike@mikeash.com' }
	s.source				= { :git => 'https://github.com/gfzabarino/MAObjCRuntime.git', :tag => s.version.to_s }
	s.platform				= :ios, '7.0'	
	s.source_files			= 'RT*.{h,m}', 'MARTNSObject.{h,m}'
	s.frameworks			= 'Foundation'
	s.requires_arc			= false

end
