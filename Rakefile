include Rake::DSL

namespace :project do

  desc "Lint the project source, if 'swiftlint' is available"
  task :lint do
    system 'which -s swiftlint' and exec 'swiftlint'
  end

end
