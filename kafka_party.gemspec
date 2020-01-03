# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kafka_party/version"

Gem::Specification.new do |spec|
  spec.name          = "kafka_party"
  spec.version       = KafkaParty::VERSION
  spec.authors       = ["Ryan Krage"]
  spec.email         = ["krage.ryan@gmail.com"]

  spec.summary       = %q{Utility for reporting time-based lag metrics for Kafka}
  spec.description   = %q{Utility for reporting time-based lag metrics for Kafka}
  spec.homepage      = "https://github.com/rkrage/kafka_party"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruby-kafka", ">= 0.7.10", "< 1.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "byebug", "~> 11.0"
  spec.add_development_dependency "pry-byebug", "~> 3.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-its", "~> 1.3"
end
