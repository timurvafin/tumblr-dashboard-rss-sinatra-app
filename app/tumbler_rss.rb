require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'tumblr_dashboard_rss'

get '/:email/:password' do
  Tumblr::DashboardRSS.new(params[:email], params[:password], params).to_rss
end