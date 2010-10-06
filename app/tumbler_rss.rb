require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'tumblr_dashboard_rss'

get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/:email/:password' do
  Tumblr::DashboardRSS.new(params[:email], params[:password], params).to_rss
end