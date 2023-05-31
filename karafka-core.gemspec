# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'karafka/core/version'

Gem::Specification.new do |spec|
  spec.name        = 'karafka-core'
  spec.version     = ::Karafka::Core::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ['Maciej Mensfeld']
  spec.email       = %w[contact@karafka.io]
  spec.homepage    = 'https://karafka.io'
  spec.summary     = 'Karafka ecosystem core modules'
  spec.description = 'A toolset of small support modules used throughout the Karafka ecosystem'
  spec.licenses    = %w[MIT]

  spec.add_dependency 'concurrent-ruby', '>= 1.1'
  # TODO: drop karafka-rdkafka in favour of custom gem that doesn't build native extensions on nix
  # spec.add_dependency 'karafka-rdkafka', '>= 0.12.3'
  # gem "rdkafka", git: "git@github.com:sutrolabs/karafka-rdkafka.git", branch: "kt/support-nix"

  spec.required_ruby_version = '>= 2.6.0'

  if $PROGRAM_NAME.end_with?('gem')
    spec.signing_key = File.expand_path('~/.ssh/gem-private_key.pem')
  end

  spec.cert_chain    = %w[certs/cert_chain.pem]
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.require_paths = %w[lib]

  spec.metadata = {
    'funding_uri' => 'https://karafka.io/#become-pro',
    'homepage_uri' => 'https://karafka.io',
    'changelog_uri' => 'https://github.com/karafka/karafka-core/blob/master/CHANGELOG.md',
    'bug_tracker_uri' => 'https://github.com/karafka/karafka-core/issues',
    'source_code_uri' => 'https://github.com/karafka/karafka-core',
    'documentation_uri' => 'https://karafka.io/docs',
    'rubygems_mfa_required' => 'true'
  }
end
