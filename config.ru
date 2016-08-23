require 'middleman-core/load_paths'
::Middleman.setup_load_paths

require 'middleman-core'
require 'middleman-core/rack'

require 'fileutils'
FileUtils.mkdir('log') unless File.exist?('log')
::Middleman::Logger.singleton("log/#{ENV['RACK_ENV']}.log")

app = ::Middleman::Application.new

run ::Middleman::Rack.new(app).to_app


# # Password Protetct
# protected_middleman = Rack::Auth::Basic.new(Middleman.server) do |username, password|
#   [username, password] == ['myusername', 'mypassword']
# end

# run protected_middleman