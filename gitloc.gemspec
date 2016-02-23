# update to match your information, not mine :)
Gem::Specification.new do |s|
  s.name        = 'gitloc-matthewswan'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "Example project -- gives lines-of-code information for a git repo"
  s.description = "Example project for the Turing School of Software and Design, see https://github.com/JoshCheek/elective-building-a-gem -- gives lines-of-code information for a git repo."
  s.authors     = ["Matthew Swan"]
  s.email       = 'swanm86@gmail.com'
  s.files       = Dir["**/*"].select { |f| File.file? f }
  s.homepage    = 'https://github.com/MatthewSwan/gitloc'
end
