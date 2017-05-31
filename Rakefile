include Rake::DSL

namespace :project do

  desc "Lint the project source, if 'swiftlint' is available"
  task :lint do
    system 'which -s swiftlint' and exec 'swiftlint'
  end

  desc "Set up the project for development and debugging."
  task :setup do
    CarthageTask::Bootstrap.execute
  end

end

## Abstract Class - Task

class Task
## Subclasses must implement `@command`, else not a `Task`.
##  @command

  def initialize (task, arguments, argumentPrefix)
    @task = task
    @arguments = arguments
    @argumentPrefix = argumentPrefix
  end

  def execute
    self.executeWith @arguments
  end

  def executeWith (args)
    command = @command
    command += " #{@task}" unless @task.empty?
    args.each { |element|
      if element.is_a? Hash
        element.each { |flag, value|
          command += " #{@argumentPrefix}#{flag}"
          command += " #{value}" unless value.nil?
        }
      else
        command += " #{@argumentPrefix}#{element}"
      end
    }
    system exec command
  end

end

class CarthageTask < Task
  def initialize (task, arguments)
    super(task, arguments, '--')
    @command = 'carthage'
  end

  Bootstrap = CarthageTask.new 'bootstrap', [{'platform' => 'iphoneos'}, 'no-use-binaries']

end
