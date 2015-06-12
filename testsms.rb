require 'twilio-ruby' 

# put your own credentials here 
account_sid = ENV['TWILIO_ACCOUNT_SID'] #'AC2f4294c5da8e1ba5e52a8c3ec8ac7ed3' 
auth_token = ENV['TWILIO_AUTH_TOKEN'] #'96b5d2f9836f1dd9f86ab5a5103f80cc' 

# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 

@client.account.messages.create({
    :from => '+18454434561',    
    :to => '+17742701342'
    :body => 'test'})
