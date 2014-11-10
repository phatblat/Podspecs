Pod::Spec.new do |s|
	s.name		= 'OctoKit'
	s.version	= '0.5.001'
	s.summary	= 'GitHub API client for Objective-C.'
	s.description   = 'This is a modified podspec for the publically available 0.5. It bumps up the ReactiveCocoa version requirement to ~> 2.3 instead of ~> 2.2.2.'
	s.homepage	= 'https://github.com/octokit/octokit.objc'
	s.license	= 'MIT'
	s.authors	= 'GitHub'

	s.source 	= { :git => 'https://github.com/octokit/octokit.objc.git', :tag => s.version.to_s }
	s.source_files = 'OctoKit'

	s.requires_arc = true
	s.platform	= :ios, '5.1'
	s.prepare_command = "    find . -regex '.*\\.[hm]' -exec sed -i '' -E 's@<ReactiveCocoa/(EXT.*)\\.h>@<ReactiveCocoa/RAC\\1.h>@' {} \\;\n"

	s.dependency 'AFNetworking', '~> 1.3.3'
	s.dependency 'ISO8601DateFormatter', '~> 0.7.0'
	s.dependency 'Mantle', '~> 1.3.1'
	s.dependency 'ReactiveCocoa', '~> 2.3'
end
