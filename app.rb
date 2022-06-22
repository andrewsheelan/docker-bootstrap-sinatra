# frozen_string_literal: true

require 'sinatra'
require 'rake'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'sinatra/reloader' if development?

# To enable sessions
# enable :sessions

configure do
  # setting options
  set :application_title, 'My New Sinatra Application'
end

get '/' do
  settings.application_title  # => 'My New Sinatra Application'
end

error 422 do
  { error: 'Unprocessable Entity' }
end

error 401 do
  'Not allowed!!!'
end
