# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/aws_s3/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-aws_s3'
  spec.version       = Fastlane::AwsS3::VERSION
  spec.author        = %q{Josh Holtz}
  spec.email         = %q{josh@rokkincat.com}

  spec.summary       = %q{Upload IPA and APK to S3}
  spec.homepage      = "https://github.com/joohae-kim/fastlane-plugin-s3"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'aws-sdk-s3', '~> 1'
  spec.add_dependency 'apktools', '~> 0.7'
  spec.add_dependency 'mime-types', '~> 3.3'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'fastlane', '>= 2.144.0'
end
