# frozen_string_literal: true

require_relative "lib/flowkit/version"

Gem::Specification.new do |spec|
  spec.name = "flowkit"
  spec.version = Flowkit::VERSION
  spec.authors = ["lychee xing"]
  spec.email = ["lolychee@gmail.com"]

  spec.summary = "A toolkit for building workflows in Ruby"
  spec.description = "A toolkit for building workflows in Ruby. Flowkit provides a set of tools and utilities to simplify the process of creating and managing workflows in Ruby applications. It offers a flexible and intuitive interface for defining and executing complex workflows, making it easier to handle dependencies, manage task execution, and handle errors."
  spec.homepage = "https://github.com/lolychee/flowkit"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lolychee/flowkit"
  spec.metadata["changelog_uri"] = "https://github.com/lolychee/flowkit/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
