require 'twilio-ruby'

#Insert your Twilio account sid and auth token here
account_sid = ''
auth_token = ''

# set up a client to talk to the Twilio REST API
TwilioClient = Twilio::REST::Client.new account_sid, auth_token
