class Communication < ActiveRecord::Base
  attr_accessible :answering_machine, :call_status, :outcome

  def self.launch!(to_phone, url)
    TwilioClient.account.calls.create(
    :from => '7247166338',
    :to => to_phone,
    :url => url
    )
  end
end
