# config/initializers/lograge.rb
#************  commented to fix jupyter problems
#Apm::Application.configure do
#  config.lograge.enabled = true
#  config.lograge.formatter = #Lograge::Formatters::Logstash.new
#  config.lograge.custom_options = lambda do |event|
    # NOTE: We must use lograge.custom_options or else lograge will only log the default info, even if extra info has been added to the notification payload
#    event.payload
#  end
#end

#Rails.application.configure do
#  config.lograge.enabled = true
#end