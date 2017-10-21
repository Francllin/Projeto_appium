require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:exec_testes) do |property|
    property.cucumber_opts = "-t @done"
end

task :start_appium do
    sh "gnome-terminal -x 'appium'"
    sleep 5
end

task teste_appium: [:start_appium, :exec_testes]