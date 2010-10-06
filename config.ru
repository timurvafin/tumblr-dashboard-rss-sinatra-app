$LOAD_PATH.unshift(File.dirname(__FILE__) + '/app')

require 'tumbler_rss'
run Sinatra::Application
