Gem::Specification.new do |gem|
  gem.name           =  'acts_as_redditable'
  gem.version        =  '0.0.1'
  gem.date           =  '2015-03-31'
  gem.summary        =  'Rails to Reddit relations'
  gem.description    =  'Tie a Rails model to a Reddit post'
  gem.authors        =  ["Nate Collings"]
  gem.email          =  'nate@natecollings.com'
  gem.homepage       =  'https://github.com/naiyt/acts_as_redditable'
  gem.license        =  'MIT'

  gem.files    = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- spec/*`.split("\n")

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '>= 3.0'
  gem.add_development_dependency 'rails', '>= 4.0'

  gem.add_dependency 'activerecord', '>= 4.0'
  gem.add_dependency 'activesupport', '>= 4.0'
end
