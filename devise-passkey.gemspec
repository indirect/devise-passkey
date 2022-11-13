# frozen_string_literal: true

require_relative "lib/devise/passkey/version"

Gem::Specification.new do |spec|
  spec.name = "devise-passkey"
  spec.version = Devise::Passkey::VERSION
  spec.authors = ["Andre Arko"]
  spec.email = ["andre@arko.net"]

  spec.summary = "Adds passkey/webauthn support to Devise"
  spec.description = "Allow Devise users to authenticate via webauthn-compliant passkeys, like Yubikey, FaceID, etc."
  spec.homepage = "https://github.com/indirect/devise-passkey"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "webauthn", "~> 1.0"
end
