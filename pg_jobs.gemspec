$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'pg_jobs/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pg_jobs'
  s.version     = PgJobs::VERSION
  s.authors     = ['Moritz Breit']
  s.email       = ['mail@moritz-breit.de']
  s.homepage    = 'https://github.com/mbreit/pg_jobs/'
  s.summary     = 'Simple ActiveJob queue for PostgreSQL using LISTEN/NOTIFY'
  s.description = 'Simple ActiveJob queue for PostgreSQL using LISTEN/NOTIFY'
  s.license     = 'MIT'

  s.files = Dir['{app,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.required_ruby_version = '>= 2.3'

  s.add_dependency 'pg', '>= 0.18', '< 2.0'
  s.add_dependency 'rails', '>= 5.1', '<= 7.1'

  s.add_development_dependency 'minitest', '~> 5.9.0'
  s.add_development_dependency 'rubocop', '~> 0.59.1'
  s.add_development_dependency 'simplecov', '~> 0.16.1'
end
