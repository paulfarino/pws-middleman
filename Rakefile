# SCSS Lint
require 'scss_lint/rake_task'
SCSSLint::RakeTask.new do |t|
  t.files = ['source/stylesheets/', 'source/stylesheets/']
end


# Deploy to PWS
desc "Build the website from source"
task :build do
 puts "## Building website"
 status = system("middleman build")
 puts status ? "OK" : "FAILED"
end

desc "Deploy site to PWS"
task :pws_deploy => :build do
 system("cf push your-app-name -m 64m -p build -b https://github.com/cloudfoundry-incubator/staticfile-buildpack.git")
end